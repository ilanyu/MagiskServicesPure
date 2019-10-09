.class public Lcom/android/server/storage/DeviceStorageMonitorService;
.super Lcom/android/server/SystemService;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/storage/DeviceStorageMonitorService$Shell;,
        Lcom/android/server/storage/DeviceStorageMonitorService$State;
    }
.end annotation


# static fields
.field private static final BOOT_IMAGE_STORAGE_REQUIREMENT:J = 0xfa00000L

.field private static final DEFAULT_CHECK_INTERVAL:J = 0xea60L

.field private static final DEFAULT_LOG_DELTA_BYTES:J = 0x4000000L

.field public static final EXTRA_SEQUENCE:Ljava/lang/String; = "seq"

.field private static final GB:J = 0x3b9aca00L

.field private static final KB:J = 0x3e8L

.field private static final MB:J = 0xf4240L

.field private static final MSG_CHECK:I = 0x1

.field static final OPTION_FORCE_UPDATE:I = 0x1

.field static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final TV_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "devicestoragemonitor.tv"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field private volatile mForceLevel:I

.field private mFreeMem:J

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mLevel:I

.field private final mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

.field private mNotifManager:Landroid/app/NotificationManager;

.field private final mRemoteService:Landroid/os/Binder;

.field private final mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/UUID;",
            "Lcom/android/server/storage/DeviceStorageMonitorService$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 348
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 108
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLevel:I

    .line 182
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    .line 188
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$1;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 404
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$3;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$3;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 424
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$4;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$4;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    .line 350
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceStorageMonitorService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 351
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 353
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    .line 363
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 81
    iget v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLevel:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 81
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->check()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 81
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->doMemLowAction()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 81
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelMemLowAction()V
    .registers 5

    .line 222
    :try_start_0
    const-string/jumbo v0, "sys.is_mem_low_retried"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLevel:I

    .line 224
    const-string/jumbo v0, "sys.is_mem_low_level"

    iget v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "DeviceStorageMonitorService"

    const-string v1, "enable the statusbar,recents and home key."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 228
    goto :goto_36

    .line 226
    :catch_1f
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemProperties set, Exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_36
    return-void
.end method

.method private check()V
    .registers 37

    .line 260
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 261
    .local v2, "storage":Landroid/os/storage/StorageManager;
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 264
    .local v3, "seq":I
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 265
    .local v5, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v6

    .line 267
    .local v6, "file":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 268
    goto :goto_1d

    .line 271
    :cond_39
    const-wide/32 v7, 0x3b9aca00

    .line 272
    .local v7, "mediumBytes":J
    const-wide/32 v9, 0x1dcd6500

    .line 273
    .local v9, "lowBytes":J
    const-wide/32 v11, 0x5f5e100

    .line 279
    .local v11, "fullBytes":J
    invoke-virtual {v6}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v13

    const-wide/32 v15, 0x2cb41780

    cmp-long v0, v13, v15

    const/4 v13, 0x0

    const-wide/32 v14, 0x3b9aca00

    if-gez v0, :cond_75

    .line 280
    const-string/jumbo v0, "package"

    .line 281
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v17, v0

    .line 283
    .local v17, "pms":Lcom/android/server/pm/PackageManagerService;
    :try_start_5c
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_60} :catch_6a

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    :try_start_64
    invoke-virtual {v2, v0, v14, v15, v13}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    .line 286
    .end local v17    # "pms":Lcom/android/server/pm/PackageManagerService;
    .local v2, "pms":Lcom/android/server/pm/PackageManagerService;
    .local v18, "storage":Landroid/os/storage/StorageManager;
    goto :goto_77

    .line 284
    :catch_68
    move-exception v0

    goto :goto_6f

    .line 284
    .end local v18    # "storage":Landroid/os/storage/StorageManager;
    .local v2, "storage":Landroid/os/storage/StorageManager;
    .restart local v17    # "pms":Lcom/android/server/pm/PackageManagerService;
    :catch_6a
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    .line 285
    .end local v17    # "pms":Lcom/android/server/pm/PackageManagerService;
    .local v0, "e":Ljava/io/IOException;
    .local v2, "pms":Lcom/android/server/pm/PackageManagerService;
    .restart local v18    # "storage":Landroid/os/storage/StorageManager;
    :goto_6f
    const-string v13, "DeviceStorageMonitorService"

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    goto :goto_77

    .line 291
    .end local v18    # "storage":Landroid/os/storage/StorageManager;
    .local v2, "storage":Landroid/os/storage/StorageManager;
    :cond_75
    move-object/from16 v18, v2

    .line 291
    .end local v2    # "storage":Landroid/os/storage/StorageManager;
    .restart local v18    # "storage":Landroid/os/storage/StorageManager;
    :goto_77
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    .line 292
    .local v2, "uuid":Ljava/util/UUID;
    invoke-direct {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->findOrCreateState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$State;

    move-result-object v13

    .line 293
    .local v13, "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    invoke-virtual {v6}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v16

    .line 294
    .local v16, "totalBytes":J
    invoke-virtual {v6}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v14

    .line 296
    .local v14, "usableBytes":J
    iget v0, v13, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    .line 298
    .local v0, "oldLevel":I
    move/from16 v27, v0

    iget v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 298
    .end local v0    # "oldLevel":I
    .local v27, "oldLevel":I
    move-object/from16 v28, v4

    const/4 v4, -0x1

    if-eq v0, v4, :cond_9f

    .line 301
    const/4 v0, -0x1

    .line 302
    .end local v27    # "oldLevel":I
    .restart local v0    # "oldLevel":I
    iget v4, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 314
    .local v4, "newLevel":I
    move/from16 v35, v4

    move v4, v0

    move/from16 v0, v35

    goto :goto_d6

    .line 303
    .end local v0    # "oldLevel":I
    .end local v4    # "newLevel":I
    .restart local v27    # "oldLevel":I
    :cond_9f
    const-wide/32 v20, 0x5f5e100

    cmp-long v0, v14, v20

    if-gtz v0, :cond_aa

    .line 304
    const/4 v0, 0x3

    .line 314
    .end local v27    # "oldLevel":I
    .local v0, "newLevel":I
    .local v4, "oldLevel":I
    :goto_a7
    move/from16 v4, v27

    goto :goto_d6

    .line 305
    .end local v0    # "newLevel":I
    .end local v4    # "oldLevel":I
    .restart local v27    # "oldLevel":I
    :cond_aa
    const-wide/32 v20, 0x1dcd6500

    cmp-long v0, v14, v20

    if-gtz v0, :cond_b3

    .line 306
    const/4 v0, 0x2

    goto :goto_a7

    .line 308
    :cond_b3
    const-wide/32 v20, 0x3b9aca00

    cmp-long v0, v14, v20

    if-gtz v0, :cond_bc

    .line 309
    const/4 v0, 0x1

    goto :goto_a7

    .line 310
    :cond_bc
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-static {}, Lcom/android/server/storage/DeviceStorageMonitorService;->isBootImageOnDisk()Z

    move-result v0

    if-nez v0, :cond_d3

    const-wide/32 v20, 0xfa00000

    cmp-long v0, v14, v20

    if-gez v0, :cond_d3

    .line 312
    const/4 v0, 0x2

    goto :goto_a7

    .line 314
    :cond_d3
    move/from16 v4, v27

    const/4 v0, 0x0

    .line 314
    .end local v27    # "oldLevel":I
    .restart local v0    # "newLevel":I
    .restart local v4    # "oldLevel":I
    :goto_d6
    move/from16 v29, v0

    .line 316
    .end local v0    # "newLevel":I
    .local v29, "newLevel":I
    iput-wide v14, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    .line 317
    move-object/from16 v30, v6

    move/from16 v6, v29

    iput v6, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mLevel:I

    .line 320
    .end local v29    # "newLevel":I
    .local v6, "newLevel":I
    .local v30, "file":Ljava/io/File;
    move-wide/from16 v31, v7

    iget-wide v7, v13, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    .line 320
    .end local v7    # "mediumBytes":J
    .local v31, "mediumBytes":J
    sub-long/2addr v7, v14

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v19, 0x4000000

    cmp-long v0, v7, v19

    if-gtz v0, :cond_f6

    if-eq v4, v6, :cond_f3

    goto :goto_f6

    .line 333
    :cond_f3
    move-wide/from16 v33, v9

    goto :goto_12e

    .line 323
    :cond_f6
    :goto_f6
    :try_start_f6
    const-string/jumbo v0, "sys.is_mem_low_level"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_100} :catch_104

    .line 326
    nop

    .line 328
    move-wide/from16 v33, v9

    goto :goto_11d

    .line 324
    :catch_104
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "DeviceStorageMonitorService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v33, v9

    const-string v9, "SystemProperties set, Exception is "

    .line 325
    .end local v9    # "lowBytes":J
    .local v33, "lowBytes":J
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11d
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v20

    move/from16 v21, v4

    move/from16 v22, v6

    move-wide/from16 v23, v14

    move-wide/from16 v25, v16

    invoke-static/range {v20 .. v26}, Lcom/android/server/EventLogTags;->writeStorageState(Ljava/lang/String;IIJJ)V

    .line 330
    iput-wide v14, v13, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    .line 333
    :goto_12e
    invoke-direct {v1, v5, v4, v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateNotifications(Landroid/os/storage/VolumeInfo;II)V

    .line 334
    invoke-direct {v1, v5, v4, v6, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateBroadcasts(Landroid/os/storage/VolumeInfo;III)V

    .line 336
    iput v6, v13, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    .line 337
    .end local v2    # "uuid":Ljava/util/UUID;
    .end local v4    # "oldLevel":I
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v6    # "newLevel":I
    .end local v11    # "fullBytes":J
    .end local v13    # "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    .end local v14    # "usableBytes":J
    .end local v16    # "totalBytes":J
    .end local v30    # "file":Ljava/io/File;
    .end local v31    # "mediumBytes":J
    .end local v33    # "lowBytes":J
    nop

    .line 264
    move-object/from16 v2, v18

    move-object/from16 v4, v28

    goto/16 :goto_1d

    .line 341
    .end local v18    # "storage":Landroid/os/storage/StorageManager;
    .local v2, "storage":Landroid/os/storage/StorageManager;
    :cond_13d
    move-object/from16 v18, v2

    .line 341
    .end local v2    # "storage":Landroid/os/storage/StorageManager;
    .restart local v18    # "storage":Landroid/os/storage/StorageManager;
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_156

    .line 342
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 345
    :cond_156
    return-void
.end method

.method private doMemLowAction()V
    .registers 5

    .line 206
    :try_start_0
    iget v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLevel:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4f

    .line 207
    const-string v0, "DeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "low memory, getMemLevel free memory is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " level is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLevel:I

    .line 208
    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService$State;->levelToString(I)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$300(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.securitycenter.action.START_LOW_MEMORY_CLEAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "memDangerousLowIntent":Landroid/content/Intent;
    const-string/jumbo v1, "memory"

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 211
    const-string/jumbo v1, "level"

    iget v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4f} :catch_50

    .line 217
    .end local v0    # "memDangerousLowIntent":Landroid/content/Intent;
    :cond_4f
    goto :goto_68

    .line 215
    :catch_50
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "low memory, Exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_68
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 514
    const-string v0, "Device storage monitor service (devicestoragemonitor) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    const-string v0, "  force-low [-f]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    const-string v0, "    Force storage to be low, freezing storage state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    const-string v0, "    -f: force a storage change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    const-string v0, "  force-not-low [-f]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    const-string v0, "    Force storage to not be low, freezing storage state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    const-string v0, "    -f: force a storage change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    const-string v0, "  reset [-f]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    const-string v0, "    Unfreeze storage state, returning to current real values."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    const-string v0, "    -f: force a storage change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method private findOrCreateState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$State;
    .registers 5
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 245
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    .line 246
    .local v0, "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    if-nez v0, :cond_16

    .line 247
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;)V

    move-object v0, v1

    .line 248
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_16
    return-object v0
.end method

.method private static isBootImageOnDisk()Z
    .registers 6

    .line 366
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_15

    aget-object v4, v0, v3

    .line 367
    .local v4, "instructionSet":Ljava/lang/String;
    invoke-static {v4}, Ldalvik/system/VMRuntime;->isBootClassPathOnDisk(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 368
    return v2

    .line 366
    .end local v4    # "instructionSet":Ljava/lang/String;
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 371
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method private updateBroadcasts(Landroid/os/storage/VolumeInfo;III)V
    .registers 11
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldLevel"    # I
    .param p3, "newLevel"    # I
    .param p4, "seq"    # I

    .line 629
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 631
    return-void

    .line 634
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 635
    const/high16 v1, 0x5200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "seq"

    .line 638
    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 639
    .local v0, "lowIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "seq"

    .line 643
    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 645
    .local v1, "notLowIntent":Landroid/content/Intent;
    const/4 v2, 0x2

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService$State;->isEntering(III)Z
    invoke-static {v2, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$800(III)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 646
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_5c

    .line 647
    :cond_44
    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService$State;->isLeaving(III)Z
    invoke-static {v2, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$700(III)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 648
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 649
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 652
    :cond_5c
    :goto_5c
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "seq"

    .line 654
    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 655
    .local v2, "fullIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "seq"

    .line 657
    invoke-virtual {v3, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 659
    .local v3, "notFullIntent":Landroid/content/Intent;
    const/4 v4, 0x3

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService$State;->isEntering(III)Z
    invoke-static {v4, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$800(III)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 661
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->removeFileForLowMem()V

    .line 662
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_ae

    .line 663
    :cond_96
    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService$State;->isLeaving(III)Z
    invoke-static {v4, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$700(III)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 664
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 665
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 667
    :cond_ae
    :goto_ae
    return-void
.end method

.method private updateNotifications(Landroid/os/storage/VolumeInfo;II)V
    .registers 20
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldLevel"    # I
    .param p3, "newLevel"    # I

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 562
    move/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 563
    .local v9, "context":Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    .line 567
    .local v10, "uuid":Ljava/util/UUID;
    const/4 v11, 0x1

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService$State;->isMiuiEntering(III)Z
    invoke-static {v11, v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$600(III)Z

    move-result v3

    const/16 v12, 0x17

    if-eqz v3, :cond_dc

    .line 569
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.miui.securitycenter.LunchCleanMaster"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v13, v3

    .line 570
    .local v13, "lowMemIntent":Landroid/content/Intent;
    const-string v3, "android.os.storage.extra.UUID"

    invoke-virtual {v13, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 571
    const-string/jumbo v3, "level"

    iget v4, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLevel:I

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 572
    const-string/jumbo v3, "memory"

    iget-wide v4, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v13, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 573
    invoke-direct/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->doMemLowAction()V

    .line 575
    const/high16 v3, 0x10000000

    invoke-virtual {v13, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 577
    const v3, 0x104037d

    invoke-virtual {v9, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 581
    .local v14, "title":Ljava/lang/CharSequence;
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v3, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x104037b

    if-eqz v3, :cond_61

    .line 582
    invoke-static {}, Lcom/android/server/storage/DeviceStorageMonitorService;->isBootImageOnDisk()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 583
    goto :goto_5c

    .line 584
    :cond_59
    const v4, 0x104037c

    .line 582
    :goto_5c
    invoke-virtual {v9, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 582
    .local v3, "details":Ljava/lang/CharSequence;
    goto :goto_65

    .line 586
    .end local v3    # "details":Ljava/lang/CharSequence;
    :cond_61
    invoke-virtual {v9, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 586
    .restart local v3    # "details":Ljava/lang/CharSequence;
    :goto_65
    move-object v15, v3

    .line 592
    .end local v3    # "details":Ljava/lang/CharSequence;
    .local v15, "details":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v3, v9

    move-object v5, v13

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 595
    .local v3, "intent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v4, v9, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x10807b4

    .line 597
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 598
    invoke-virtual {v4, v14}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x106016f

    .line 599
    invoke-virtual {v9, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 601
    invoke-virtual {v4, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 602
    invoke-virtual {v4, v15}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 603
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 605
    invoke-virtual {v5, v15}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    .line 604
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 606
    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string/jumbo v5, "sys"

    .line 607
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$TvExtender;

    invoke-direct {v5}, Landroid/app/Notification$TvExtender;-><init>()V

    const-string v6, "devicestoragemonitor.tv"

    .line 609
    invoke-virtual {v5, v6}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object v5

    .line 608
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 610
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 613
    .local v4, "notification":Landroid/app/Notification;
    if-le v2, v11, :cond_d0

    .line 614
    iget v5, v4, Landroid/app/Notification;->flags:I

    const/4 v6, 0x2

    or-int/2addr v5, v6

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 615
    iput v6, v4, Landroid/app/Notification;->priority:I

    .line 617
    :cond_d0
    iget-object v5, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v12, v4, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 620
    .end local v3    # "intent":Landroid/app/PendingIntent;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v13    # "lowMemIntent":Landroid/content/Intent;
    .end local v14    # "title":Ljava/lang/CharSequence;
    .end local v15    # "details":Ljava/lang/CharSequence;
    goto :goto_f0

    :cond_dc
    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService$State;->isLeaving(III)Z
    invoke-static {v11, v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$700(III)Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 621
    invoke-direct/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelMemLowAction()V

    .line 623
    iget-object v3, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v12, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 626
    :cond_f0
    :goto_f0
    return-void
.end method


# virtual methods
.method dumpImpl(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "_pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 529
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 530
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const/4 v1, 0x0

    if-eqz p3, :cond_2f

    array-length v2, p3

    if-eqz v2, :cond_2f

    const-string v2, "-a"

    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_2f

    .line 556
    :cond_18
    new-instance v3, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;

    invoke-direct {v3, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 557
    .local v3, "shell":Lcom/android/server/storage/DeviceStorageMonitorService$Shell;
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    new-instance v10, Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v6, p1

    move-object v8, p3

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .end local v3    # "shell":Lcom/android/server/storage/DeviceStorageMonitorService$Shell;
    goto/16 :goto_be

    .line 531
    :cond_2f
    :goto_2f
    const-string v2, "Known volumes:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 533
    nop

    .line 533
    .local v1, "i":I
    :goto_38
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_96

    .line 534
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 535
    .local v2, "uuid":Ljava/util/UUID;
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    .line 536
    .local v3, "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    sget-object v4, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v4, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 537
    const-string v4, "Default:"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_72

    .line 539
    :cond_5e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 541
    :goto_72
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 542
    const-string/jumbo v4, "level"

    iget v5, v3, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService$State;->levelToString(I)Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$300(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 543
    const-string/jumbo v4, "lastUsableBytes"

    iget-wide v5, v3, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 544
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 545
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 533
    .end local v2    # "uuid":Ljava/util/UUID;
    .end local v3    # "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 547
    .end local v1    # "i":I
    :cond_96
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 548
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 550
    const-string/jumbo v1, "mSeq"

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 551
    const-string/jumbo v1, "mForceState"

    iget v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService$State;->levelToString(I)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$300(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 552
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 553
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 559
    :goto_be
    return-void
.end method

.method public onBootPhase(I)V
    .registers 5
    .param p1, "phase"    # I

    .line 234
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 235
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1f

    .line 236
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1f
    return-void
.end method

.method onShellCommand(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;Ljava/lang/String;)I
    .registers 11
    .param p1, "shell"    # Lcom/android/server/storage/DeviceStorageMonitorService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 466
    if-nez p2, :cond_7

    .line 467
    invoke-virtual {p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 469
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 470
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x6761d4f

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v2, :cond_37

    const v2, 0x5b023572

    if-eq v1, v2, :cond_2d

    const v2, 0x64de7478

    if-eq v1, v2, :cond_23

    goto :goto_42

    :cond_23
    const-string v1, "force-not-low"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    move v1, v6

    goto :goto_43

    :cond_2d
    const-string v1, "force-low"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    move v1, v5

    goto :goto_43

    :cond_37
    const-string/jumbo v1, "reset"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    move v1, v3

    goto :goto_43

    :cond_42
    :goto_42
    move v1, v4

    :goto_43
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_d0

    .line 508
    invoke-virtual {p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 496
    :pswitch_4c
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result v1

    .line 497
    .local v1, "opts":I
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v7, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iput v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 500
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 501
    .local v2, "seq":I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_76

    .line 502
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 503
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 504
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 506
    .end local v1    # "opts":I
    .end local v2    # "seq":I
    :cond_76
    goto :goto_cd

    .line 484
    :pswitch_77
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result v1

    .line 485
    .restart local v1    # "opts":I
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iput v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 488
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 489
    .restart local v2    # "seq":I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_a1

    .line 490
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 491
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 492
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 494
    .end local v1    # "opts":I
    .end local v2    # "seq":I
    :cond_a1
    goto :goto_cd

    .line 472
    :pswitch_a2
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result v1

    .line 473
    .restart local v1    # "opts":I
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "android.permission.DEVICE_POWER"

    invoke-virtual {v4, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iput v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 476
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 477
    .restart local v2    # "seq":I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_cc

    .line 478
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 479
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 480
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 482
    .end local v1    # "opts":I
    .end local v2    # "seq":I
    :cond_cc
    nop

    .line 510
    :goto_cd
    return v5

    nop

    nop

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_a2
        :pswitch_77
        :pswitch_4c
    .end packed-switch
.end method

.method public onStart()V
    .registers 9

    .line 376
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 377
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    .line 379
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v1}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    .line 380
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-virtual {v1}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    .line 383
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 384
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 386
    .local v2, "isTv":Z
    if-eqz v2, :cond_3a

    .line 387
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    new-instance v4, Landroid/app/NotificationChannel;

    const-string v5, "devicestoragemonitor.tv"

    const v6, 0x10401d6

    .line 389
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 387
    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 394
    :cond_3a
    const-string v3, "devicestoragemonitor"

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 395
    const-class v3, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 402
    return-void
.end method

.method parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I
    .registers 5
    .param p1, "shell"    # Lcom/android/server/storage/DeviceStorageMonitorService$Shell;

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "opts":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 458
    const-string v1, "-f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 462
    :cond_13
    return v0
.end method
