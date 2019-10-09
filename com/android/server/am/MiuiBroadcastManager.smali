.class public Lcom/android/server/am/MiuiBroadcastManager;
.super Lcom/android/server/am/BaseMiuiBroadcastManager;
.source "MiuiBroadcastManager.java"


# static fields
.field private static volatile sInstance:Lcom/android/server/am/MiuiBroadcastManager;

.field static final sInstanceSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/MiuiBroadcastManager;->sInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 24
    invoke-direct {p0}, Lcom/android/server/am/BaseMiuiBroadcastManager;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->init(Lcom/android/server/am/ActivityManagerService;)V

    .line 26
    return-void
.end method

.method static getExtraQueueSize()I
    .registers 1

    .line 29
    sget v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->EXTRA_QUEUE_SIZE:I

    return v0
.end method

.method static getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;
    .registers 3
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 14
    sget-object v0, Lcom/android/server/am/MiuiBroadcastManager;->sInstance:Lcom/android/server/am/MiuiBroadcastManager;

    if-nez v0, :cond_17

    .line 15
    sget-object v0, Lcom/android/server/am/MiuiBroadcastManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_7
    sget-object v1, Lcom/android/server/am/MiuiBroadcastManager;->sInstance:Lcom/android/server/am/MiuiBroadcastManager;

    if-nez v1, :cond_12

    .line 17
    new-instance v1, Lcom/android/server/am/MiuiBroadcastManager;

    invoke-direct {v1, p0}, Lcom/android/server/am/MiuiBroadcastManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v1, Lcom/android/server/am/MiuiBroadcastManager;->sInstance:Lcom/android/server/am/MiuiBroadcastManager;

    .line 19
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 21
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/server/am/MiuiBroadcastManager;->sInstance:Lcom/android/server/am/MiuiBroadcastManager;

    return-object v0
.end method

.method static isExtraQueueEnabled()Z
    .registers 1

    .line 33
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    return v0
.end method


# virtual methods
.method createBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;JZ)Lcom/android/server/am/BroadcastQueue;
    .registers 14
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "timeoutPeriod"    # J
    .param p5, "allowDelayBehindServices"    # Z

    .line 39
    new-instance v7, Lcom/android/server/am/BroadcastQueue;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;JZ)V

    return-object v7
.end method

.method createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;
    .registers 29
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "receivers"    # Ljava/util/List;
    .param p4, "old"    # Lcom/android/server/am/BroadcastRecord;

    .line 44
    move-object/from16 v0, p4

    new-instance v22, Lcom/android/server/am/BroadcastRecord;

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    iget-object v14, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iget v15, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    iget-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move-object/from16 v23, v8

    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/16 v16, 0x0

    move/from16 v20, v1

    move-object/from16 v1, v22

    move/from16 v19, v2

    move-object/from16 v2, p1

    move/from16 v18, v3

    move-object/from16 v3, p2

    move/from16 v21, v8

    move-object/from16 v17, v23

    move/from16 v8, v16

    move-object/from16 v16, v13

    move-object/from16 v13, p3

    invoke-direct/range {v1 .. v21}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZI)V

    return-object v22
.end method
