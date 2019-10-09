.class public Lcom/android/server/GraphicsStatsService;
.super Landroid/view/IGraphicsStats$Stub;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GraphicsStatsService$HistoricalBuffer;,
        Lcom/android/server/GraphicsStatsService$ActiveBuffer;,
        Lcom/android/server/GraphicsStatsService$BufferInfo;
    }
.end annotation


# static fields
.field private static final DELETE_OLD:I = 0x2

.field public static final GRAPHICS_STATS_SERVICE:Ljava/lang/String; = "graphicsstats"

.field private static final SAVE_BUFFER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GraphicsStatsService"


# instance fields
.field private final ASHMEM_SIZE:I

.field private final ZERO_DATA:[B

.field private mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/GraphicsStatsService$ActiveBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mFileAccessLock:Ljava/lang/Object;

.field private mGraphicsStatsDir:Ljava/io/File;

.field private final mLock:Ljava/lang/Object;

.field private mRotateIsScheduled:Z

.field private mWriteOutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Landroid/view/IGraphicsStats$Stub;-><init>()V

    .line 83
    invoke-static {}, Lcom/android/server/GraphicsStatsService;->nGetAshmemSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/GraphicsStatsService;->ASHMEM_SIZE:I

    .line 84
    iget v0, p0, Lcom/android/server/GraphicsStatsService;->ASHMEM_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->ZERO_DATA:[B

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    .line 97
    iput-object p1, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    .line 98
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 99
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 100
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v0, "systemDataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "graphicsstats"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    .line 102
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 103
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 107
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GraphicsStats-disk"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 108
    .local v1, "bgthread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Lcom/android/server/GraphicsStatsService$1;

    invoke-direct {v4, p0}, Lcom/android/server/GraphicsStatsService$1;-><init>(Lcom/android/server/GraphicsStatsService;)V

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    .line 124
    return-void

    .line 104
    .end local v1    # "bgthread":Landroid/os/HandlerThread;
    :cond_7c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Graphics stats directory does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    .line 105
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$HistoricalBuffer;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GraphicsStatsService;
    .param p1, "x1"    # Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->saveBuffer(Lcom/android/server/GraphicsStatsService$HistoricalBuffer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/GraphicsStatsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/GraphicsStatsService;

    .line 73
    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->deleteOldBuffers()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/GraphicsStatsService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GraphicsStatsService;

    .line 73
    iget v0, p0, Lcom/android/server/GraphicsStatsService;->ASHMEM_SIZE:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/GraphicsStatsService;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GraphicsStatsService;

    .line 73
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->ZERO_DATA:[B

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GraphicsStatsService;
    .param p1, "x1"    # Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    return-void
.end method

.method private addToSaveQueue(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .registers 6
    .param p1, "buffer"    # Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .line 280
    :try_start_0
    new-instance v0, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    .line 281
    .local v0, "data":Lcom/android/server/GraphicsStatsService$HistoricalBuffer;
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    .line 284
    .end local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalBuffer;
    goto :goto_2b

    .line 282
    :catch_10
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "GraphicsStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to copy graphicsstats from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v3, v3, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2b
    invoke-virtual {p1}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->closeAllBuffers()V

    .line 286
    return-void
.end method

.method private deleteOldBuffers()V
    .registers 12

    .line 253
    const-string v0, "deleting old graphicsstats buffers"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_b
    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 256
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_56

    array-length v4, v3

    const/4 v5, 0x3

    if-gt v4, v5, :cond_18

    goto :goto_56

    .line 259
    :cond_18
    array-length v4, v3

    new-array v4, v4, [J

    .line 260
    .local v4, "sortedDates":[J
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_1d
    array-length v8, v3
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_58

    if-ge v7, v8, :cond_31

    .line 262
    :try_start_20
    aget-object v8, v3, v7

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v4, v7
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_2c} :catch_2d
    .catchall {:try_start_20 .. :try_end_2c} :catchall_58

    .line 265
    goto :goto_2e

    .line 263
    :catch_2d
    move-exception v8

    .line 260
    :goto_2e
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 267
    .end local v7    # "i":I
    :cond_31
    :try_start_31
    array-length v7, v4

    if-gt v7, v5, :cond_36

    .line 268
    monitor-exit v0

    return-void

    .line 270
    :cond_36
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 271
    nop

    .local v6, "i":I
    :goto_3a
    array-length v7, v4

    sub-int/2addr v7, v5

    if-ge v6, v7, :cond_51

    .line 272
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    aget-wide v9, v4, v6

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/android/server/GraphicsStatsService;->deleteRecursiveLocked(Ljava/io/File;)V

    .line 271
    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    .line 274
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "sortedDates":[J
    .end local v6    # "i":I
    :cond_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_31 .. :try_end_52} :catchall_58

    .line 275
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 276
    return-void

    .line 257
    .restart local v3    # "files":[Ljava/io/File;
    :cond_56
    :goto_56
    :try_start_56
    monitor-exit v0

    return-void

    .line 274
    .end local v3    # "files":[Ljava/io/File;
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method private deleteRecursiveLocked(Ljava/io/File;)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;

    .line 242
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 243
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 244
    .local v3, "child":Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/android/server/GraphicsStatsService;->deleteRecursiveLocked(Ljava/io/File;)V

    .line 243
    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 247
    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 248
    const-string v0, "GraphicsStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_3b
    return-void
.end method

.method private dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;
    .registers 21
    .param p1, "dump"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/GraphicsStatsService$HistoricalBuffer;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 323
    .local p3, "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/GraphicsStatsService$HistoricalBuffer;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 324
    .local v0, "skipFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 325
    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    .line 326
    .local v3, "buffer":Lcom/android/server/GraphicsStatsService$HistoricalBuffer;
    iget-object v4, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    move-object/from16 v5, p0

    invoke-direct {v5, v4}, Lcom/android/server/GraphicsStatsService;->pathForApp(Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;

    move-result-object v4

    .line 327
    .local v4, "path":Ljava/io/File;
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v6, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v9, v6, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v10, v6, Lcom/android/server/GraphicsStatsService$BufferInfo;->versionCode:J

    iget-object v6, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v12, v6, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    iget-object v6, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v14, v6, Lcom/android/server/GraphicsStatsService$BufferInfo;->endTime:J

    iget-object v6, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mData:[B

    move-object/from16 v16, v6

    move-wide/from16 v6, p1

    invoke-static/range {v6 .. v16}, Lcom/android/server/GraphicsStatsService;->nAddToDump(JLjava/lang/String;Ljava/lang/String;JJJ[B)V

    .line 324
    .end local v3    # "buffer":Lcom/android/server/GraphicsStatsService$HistoricalBuffer;
    .end local v4    # "path":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 332
    .end local v1    # "i":I
    :cond_43
    move-object/from16 v5, p0

    move-object/from16 v2, p3

    return-object v0
.end method

.method private dumpHistoricalLocked(JLjava/util/HashSet;)V
    .registers 22
    .param p1, "dump"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 336
    .local p3, "skipFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_64

    aget-object v5, v1, v4

    .line 337
    .local v5, "date":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_14
    if-ge v8, v7, :cond_57

    aget-object v9, v6, v8

    .line 338
    .local v9, "pkg":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_1e
    if-ge v12, v11, :cond_4a

    aget-object v13, v10, v12

    .line 339
    .local v13, "version":Ljava/io/File;
    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "total"

    invoke-direct {v14, v13, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 340
    .local v14, "data":Ljava/io/File;
    move-object/from16 v15, p3

    invoke-virtual {v15, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_38

    .line 341
    nop

    .line 338
    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    goto :goto_43

    .line 343
    :cond_38
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v3}, Lcom/android/server/GraphicsStatsService;->nAddToDump(JLjava/lang/String;)V

    .line 338
    .end local v13    # "version":Ljava/io/File;
    .end local v14    # "data":Ljava/io/File;
    :goto_43
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v17

    move-object/from16 v0, p0

    goto :goto_1e

    .line 337
    .end local v9    # "pkg":Ljava/io/File;
    :cond_4a
    move-object/from16 v15, p3

    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v17

    move-object/from16 v0, p0

    goto :goto_14

    .line 336
    .end local v5    # "date":Ljava/io/File;
    :cond_57
    move-object/from16 v15, p3

    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v17

    move-object/from16 v0, p0

    goto :goto_a

    .line 347
    :cond_64
    move-wide/from16 v0, p1

    move-object/from16 v15, p3

    return-void
.end method

.method private fetchActiveBuffersLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    .registers 22
    .param p1, "token"    # Landroid/view/IGraphicsStatsCallback;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "versionCode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    .line 297
    iget-object v0, v9, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 298
    .local v10, "size":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v9, v0, v1}, Lcom/android/server/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 299
    .local v11, "today":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v10, :cond_3c

    .line 300
    iget-object v1, v9, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .line 301
    .local v1, "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    iget v2, v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    move/from16 v13, p3

    if-ne v2, v13, :cond_37

    iget v2, v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mUid:I

    move/from16 v14, p2

    if-ne v2, v14, :cond_39

    .line 304
    iget-object v2, v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v2, v2, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    cmp-long v2, v2, v11

    if-gez v2, :cond_36

    .line 305
    invoke-virtual {v1}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->binderDied()V

    .line 306
    goto :goto_40

    .line 308
    :cond_36
    return-object v1

    .line 299
    .end local v1    # "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    :cond_37
    move/from16 v14, p2

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 314
    .end local v0    # "i":I
    :cond_3c
    move/from16 v14, p2

    move/from16 v13, p3

    :goto_40
    :try_start_40
    new-instance v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    move-object v1, v0

    move-object v2, v9

    move-object/from16 v3, p1

    move v4, v14

    move v5, v13

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)V

    .line 315
    .local v0, "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    iget-object v1, v9, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_54} :catch_55

    .line 316
    return-object v0

    .line 317
    .end local v0    # "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    :catch_55
    move-exception v0

    .line 318
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to allocate space"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "file"    # Landroid/os/MemoryFile;

    .line 191
    :try_start_0
    invoke-virtual {p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 194
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0

    .line 192
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid file descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1c

    .line 195
    :catch_1c
    move-exception v0

    .line 196
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get PFD from memory file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic lambda$2EDVu98hsJvSwNgKvijVLSR3IrQ(Lcom/android/server/GraphicsStatsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->onAlarm()V

    return-void
.end method

.method private static native nAddToDump(JLjava/lang/String;)V
.end method

.method private static native nAddToDump(JLjava/lang/String;Ljava/lang/String;JJJ[B)V
.end method

.method private static native nCreateDump(IZ)J
.end method

.method private static native nFinishDump(J)V
.end method

.method private static native nGetAshmemSize()I
.end method

.method private static native nSaveBuffer(Ljava/lang/String;Ljava/lang/String;JJJ[B)V
.end method

.method private normalizeDate(J)Ljava/util/Calendar;
    .registers 6
    .param p1, "timestamp"    # J

    .line 208
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 209
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 210
    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 211
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 212
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 213
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 214
    return-object v0
.end method

.method private onAlarm()V
    .registers 12

    .line 147
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    .line 149
    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->scheduleRotateLocked()V

    .line 150
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    new-array v3, v1, [Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .line 151
    .local v2, "activeCopy":[Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_49

    .line 152
    array-length v0, v2

    move v3, v1

    :goto_16
    const/4 v4, 0x2

    if-ge v3, v0, :cond_41

    aget-object v5, v2, v3

    .line 154
    .local v5, "active":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    :try_start_1b
    iget-object v6, v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mCallback:Landroid/view/IGraphicsStatsCallback;

    invoke-interface {v6}, Landroid/view/IGraphicsStatsCallback;->onRotateGraphicsStatsBuffer()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    .line 158
    goto :goto_3e

    .line 155
    :catch_21
    move-exception v6

    .line 156
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "GraphicsStatsService"

    const-string v8, "Failed to notify \'%s\' (pid=%d) to rotate buffers"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v9, v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v9, v9, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    aput-object v9, v4, v1

    iget v9, v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    .line 157
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v4, v10

    .line 156
    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v5    # "active":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 161
    :cond_41
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 162
    return-void

    .line 151
    .end local v2    # "activeCopy":[Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1
.end method

.method private pathForApp(Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;
    .registers 6
    .param p1, "info"    # Lcom/android/server/GraphicsStatsService$BufferInfo;

    .line 218
    const-string v0, "%d/%s/%d/total"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p1, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    .line 219
    invoke-direct {p0, v2, v3}, Lcom/android/server/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p1, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p1, Lcom/android/server/GraphicsStatsService$BufferInfo;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 218
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "subPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .line 289
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_3
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 291
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 292
    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->addToSaveQueue(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    .line 293
    return-void

    .line 291
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method private requestBufferForProcessLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .param p1, "token"    # Landroid/view/IGraphicsStatsCallback;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "versionCode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    invoke-direct/range {p0 .. p6}, Lcom/android/server/GraphicsStatsService;->fetchActiveBuffersLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    move-result-object v0

    .line 203
    .local v0, "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->scheduleRotateLocked()V

    .line 204
    iget-object v1, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    invoke-direct {p0, v1}, Lcom/android/server/GraphicsStatsService;->getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method private saveBuffer(Lcom/android/server/GraphicsStatsService$HistoricalBuffer;)V
    .registers 16
    .param p1, "buffer"    # Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    .line 224
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saving graphicsstats for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v3, v3, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 227
    :cond_22
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 228
    :try_start_25
    iget-object v3, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    invoke-direct {p0, v3}, Lcom/android/server/GraphicsStatsService;->pathForApp(Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;

    move-result-object v3

    .line 229
    .local v3, "path":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 230
    .local v4, "parent":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 231
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_59

    .line 232
    const-string v0, "GraphicsStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create path: \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    monitor-exit v2

    return-void

    .line 235
    :cond_59
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v6, v6, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v7, v7, Lcom/android/server/GraphicsStatsService$BufferInfo;->versionCode:J

    iget-object v9, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v9, v9, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    iget-object v11, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v11, v11, Lcom/android/server/GraphicsStatsService$BufferInfo;->endTime:J

    iget-object v13, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mData:[B

    invoke-static/range {v5 .. v13}, Lcom/android/server/GraphicsStatsService;->nSaveBuffer(Ljava/lang/String;Ljava/lang/String;JJJ[B)V

    .line 237
    .end local v3    # "path":Ljava/io/File;
    .end local v4    # "parent":Ljava/io/File;
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_25 .. :try_end_73} :catchall_77

    .line 238
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 239
    return-void

    .line 237
    :catchall_77
    move-exception v0

    :try_start_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v0
.end method

.method private scheduleRotateLocked()V
    .registers 11

    .line 132
    iget-boolean v0, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    if-eqz v0, :cond_5

    .line 133
    return-void

    .line 135
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v1

    .line 137
    .local v1, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 138
    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-string v7, "GraphicsStatsService"

    new-instance v8, Lcom/android/server/-$$Lambda$GraphicsStatsService$2EDVu98hsJvSwNgKvijVLSR3IrQ;

    invoke-direct {v8, p0}, Lcom/android/server/-$$Lambda$GraphicsStatsService$2EDVu98hsJvSwNgKvijVLSR3IrQ;-><init>(Lcom/android/server/GraphicsStatsService;)V

    iget-object v9, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 140
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    const-string v1, "GraphicsStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 352
    :cond_b
    const/4 v0, 0x0

    .line 353
    .local v0, "dumpProto":Z
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_20

    aget-object v4, p3, v3

    .line 354
    .local v4, "str":Ljava/lang/String;
    const-string v5, "--proto"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 355
    const/4 v0, 0x1

    .line 356
    goto :goto_20

    .line 353
    .end local v4    # "str":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 360
    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_23
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    .local v3, "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/GraphicsStatsService$HistoricalBuffer;>;"
    nop

    .local v2, "i":I
    :goto_2f
    iget-object v4, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_71

    if-ge v2, v4, :cond_4c

    .line 364
    :try_start_37
    new-instance v4, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    iget-object v5, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    invoke-direct {v4, p0, v5}, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_47} :catch_48
    .catchall {:try_start_37 .. :try_end_47} :catchall_71

    .line 367
    goto :goto_49

    .line 365
    :catch_48
    move-exception v4

    .line 362
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 369
    .end local v2    # "i":I
    :cond_4c
    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_71

    move-object v1, v3

    .line 370
    .end local v3    # "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/GraphicsStatsService$HistoricalBuffer;>;"
    .local v1, "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/GraphicsStatsService$HistoricalBuffer;>;"
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    invoke-static {v2, v0}, Lcom/android/server/GraphicsStatsService;->nCreateDump(IZ)J

    move-result-wide v2

    .line 372
    .local v2, "dump":J
    :try_start_56
    iget-object v4, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_6c

    .line 373
    :try_start_59
    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/GraphicsStatsService;->dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v5

    .line 374
    .local v5, "skipList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 375
    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/GraphicsStatsService;->dumpHistoricalLocked(JLjava/util/HashSet;)V

    .line 376
    .end local v5    # "skipList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    monitor-exit v4
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_69

    .line 378
    invoke-static {v2, v3}, Lcom/android/server/GraphicsStatsService;->nFinishDump(J)V

    .line 379
    nop

    .line 380
    return-void

    .line 376
    :catchall_69
    move-exception v5

    :try_start_6a
    monitor-exit v4
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v5
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    .line 378
    :catchall_6c
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/GraphicsStatsService;->nFinishDump(J)V

    throw v4

    .line 369
    .end local v1    # "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/GraphicsStatsService$HistoricalBuffer;>;"
    .end local v2    # "dump":J
    :catchall_71
    move-exception v2

    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v2
.end method

.method public requestBufferForProcess(Ljava/lang/String;Landroid/view/IGraphicsStatsCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/view/IGraphicsStatsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 167
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 168
    .local v10, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 169
    .local v11, "pid":I
    const/4 v12, 0x0

    .line 170
    .local v12, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v13, v0

    .line 172
    .local v13, "callingIdentity":J
    :try_start_12
    iget-object v0, v8, Lcom/android/server/GraphicsStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v10, v9}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 173
    iget-object v0, v8, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 176
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 173
    invoke-virtual {v0, v9, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v15, v0

    .line 177
    .local v15, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v8, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_2a} :catch_50
    .catchall {:try_start_12 .. :try_end_2a} :catchall_4e

    .line 178
    nop

    .line 179
    :try_start_2b
    invoke-virtual {v15}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v16
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_49

    .line 178
    move-object v1, v8

    move-object/from16 v2, p2

    move v3, v10

    move v4, v11

    move-object v5, v9

    move-object/from16 v18, v6

    move-wide/from16 v6, v16

    :try_start_39
    invoke-direct/range {v1 .. v7}, Lcom/android/server/GraphicsStatsService;->requestBufferForProcessLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_47

    move-object v1, v0

    .line 180
    .end local v12    # "pfd":Landroid/os/ParcelFileDescriptor;
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_3e
    monitor-exit v18
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_44

    .line 184
    .end local v15    # "info":Landroid/content/pm/PackageInfo;
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    nop

    .line 186
    return-object v1

    .line 180
    .restart local v15    # "info":Landroid/content/pm/PackageInfo;
    :catchall_44
    move-exception v0

    move-object v12, v1

    goto :goto_4c

    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v12    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_47
    move-exception v0

    goto :goto_4c

    :catchall_49
    move-exception v0

    move-object/from16 v18, v6

    :goto_4c
    :try_start_4c
    monitor-exit v18
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_47

    :try_start_4d
    throw v0
    :try_end_4e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4d .. :try_end_4e} :catch_50
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 184
    .end local v15    # "info":Landroid/content/pm/PackageInfo;
    :catchall_4e
    move-exception v0

    goto :goto_6d

    .line 181
    :catch_50
    move-exception v0

    .line 182
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_51
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find package: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6d
    .catchall {:try_start_51 .. :try_end_6d} :catchall_4e

    .line 184
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_6d
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
