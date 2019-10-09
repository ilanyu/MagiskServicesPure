.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/server/SystemService;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DropBoxManagerService$EntryFile;,
        Lcom/android/server/DropBoxManagerService$FileList;
    }
.end annotation


# static fields
.field private static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_MAX_FILES_LOWRAM:I = 0x12c

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final MSG_SEND_BROADCAST:I = 0x1

.field private static final PROFILE_DUMP:Z = false

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"


# instance fields
.field private mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private volatile mBooted:Z

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mMaxFiles:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatFs:Landroid/os/StatFs;

.field private final mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 165
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/dropbox"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 97
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 101
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 103
    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 104
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 106
    iput-boolean v0, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 114
    new-instance v0, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    new-instance v0, Lcom/android/server/DropBoxManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    .line 178
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 179
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 180
    new-instance v0, Lcom/android/server/DropBoxManagerService$3;

    invoke-direct {v0, p0, p3}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    .line 189
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/DropBoxManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # J

    .line 70
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/server/DropBoxManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DropBoxManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .line 70
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .registers 32
    .param p1, "temp"    # Ljava/io/File;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 777
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 783
    .local v2, "t":J
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v5, 0x2710

    add-long/2addr v5, v2

    invoke-direct {v4, v5, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 784
    .local v0, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    const/4 v4, 0x0

    .line 785
    .local v4, "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 786
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v4, v5

    .line 787
    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 790
    :cond_2e
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v5

    const-wide/16 v6, 0x1

    if-nez v5, :cond_4c

    .line 791
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v8, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    add-long/2addr v8, v6

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide v2, v8

    .line 794
    :cond_4c
    if-eqz v4, :cond_c0

    .line 795
    array-length v5, v4

    const/4 v8, 0x0

    move-wide v13, v2

    .end local v2    # "t":J
    .local v13, "t":J
    :goto_51
    if-ge v8, v5, :cond_bd

    aget-object v2, v4, v8

    .line 796
    .local v2, "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v9, v10

    iput v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 797
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$FileList;

    .line 798
    .local v3, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v3, :cond_79

    iget-object v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v9, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_79

    .line 799
    iget v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v9, v10

    iput v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 801
    :cond_79
    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_a4

    .line 802
    new-instance v15, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v9, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v9}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v12, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    add-long v17, v13, v6

    .local v17, "t":J
    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move v7, v9

    move-object v9, v15

    .end local v13    # "t":J
    move-object/from16 v19, v0

    move-object v0, v15

    move v15, v7

    .end local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .local v19, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    move/from16 v16, v6

    invoke-direct/range {v9 .. v16}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    .line 795
    move-wide/from16 v13, v17

    const-wide/16 v9, 0x1

    goto :goto_b7

    .line 805
    .end local v17    # "t":J
    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v13    # "t":J
    :cond_a4
    move-object/from16 v19, v0

    .end local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v7, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v9, 0x1

    add-long v11, v13, v9

    .local v11, "t":J
    invoke-direct {v0, v6, v7, v13, v14}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    .end local v13    # "t":J
    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    .line 795
    .end local v2    # "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v3    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    move-wide v13, v11

    .end local v11    # "t":J
    .restart local v13    # "t":J
    :goto_b7
    add-int/lit8 v8, v8, 0x1

    move-wide v6, v9

    move-object/from16 v0, v19

    goto :goto_51

    .line 810
    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :cond_bd
    move-object/from16 v19, v0

    goto :goto_c3

    .end local v13    # "t":J
    .local v2, "t":J
    :cond_c0
    move-object/from16 v19, v0

    move-wide v13, v2

    .end local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .end local v2    # "t":J
    .restart local v13    # "t":J
    .restart local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :goto_c3
    if-nez p1, :cond_d2

    .line 811
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v5, p2

    invoke-direct {v2, v3, v5, v13, v14}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    goto :goto_ee

    .line 813
    :cond_d2
    move-object/from16 v5, p2

    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object/from16 v20, v2

    move-object/from16 v21, p1

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move-wide/from16 v24, v13

    move/from16 v26, p3

    move/from16 v27, v6

    invoke-direct/range {v20 .. v27}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_ee
    .catchall {:try_start_3 .. :try_end_ee} :catchall_f0

    .line 815
    :goto_ee
    monitor-exit p0

    return-wide v13

    .line 776
    .end local v4    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "t":J
    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .end local p1    # "temp":Ljava/io/File;
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "flags":I
    :catchall_f0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    throw v0
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .registers 5
    .param p1, "entry"    # Lcom/android/server/DropBoxManagerService$EntryFile;

    monitor-enter p0

    .line 758
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 764
    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_45

    iget v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v0, :cond_45

    .line 765
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 766
    .local v0, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v0, :cond_39

    .line 767
    new-instance v1, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    move-object v0, v1

    .line 768
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    :cond_39
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 771
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    .line 773
    .end local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_45
    monitor-exit p0

    return-void

    .line 757
    .end local p1    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :catchall_47
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    throw p1
.end method

.method private declared-synchronized init()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 718
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v0, :cond_5f

    .line 719
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_2f

    .line 720
    :cond_16
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t mkdir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_d4

    .line 723
    :cond_2f
    :goto_2f
    :try_start_2f
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 724
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_44} :catch_45
    .catchall {:try_start_2f .. :try_end_44} :catchall_d4

    .line 727
    goto :goto_5f

    .line 725
    :catch_45
    move-exception v0

    .line 726
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_46
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t statfs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 730
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_d2

    .line 731
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 732
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_b9

    .line 734
    new-instance v1, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 735
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 738
    array-length v1, v0

    const/4 v2, 0x0

    :goto_7c
    if-ge v2, v1, :cond_d2

    aget-object v3, v0, v2

    .line 739
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 740
    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 742
    goto :goto_b6

    .line 745
    :cond_a6
    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v5, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v4, v3, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 747
    .local v4, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-virtual {v4}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 750
    invoke-direct {p0, v4}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    .line 738
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_b6
    :goto_b6
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 732
    :cond_b9
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t list files: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d2
    .catchall {:try_start_46 .. :try_end_d2} :catchall_d4

    .line 754
    .end local v0    # "files":[Ljava/io/File;
    :cond_d2
    monitor-exit p0

    return-void

    .line 717
    :catchall_d4
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    throw v0
.end method

.method private declared-synchronized trimToFit()J
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 825
    :try_start_3
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "dropbox_age_seconds"

    const v3, 0x3f480

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v2, v0

    .line 827
    .local v2, "ageSeconds":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "dropbox_max_files"

    .line 829
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 830
    const/16 v4, 0x12c

    goto :goto_1e

    .line 827
    :cond_1c
    const/16 v4, 0x3e8

    :goto_1e
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 831
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-int/lit16 v0, v2, 0x3e8

    int-to-long v5, v0

    sub-long/2addr v3, v5

    .line 832
    .local v3, "cutoffMillis":J
    :goto_2c
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_87

    .line 833
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 834
    .local v0, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-wide v5, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_53

    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->size()I

    move-result v5

    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    if-ge v5, v6, :cond_53

    .line 835
    goto :goto_87

    .line 838
    :cond_53
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DropBoxManagerService$FileList;

    .line 839
    .local v5, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v5, :cond_6e

    iget-object v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    iget v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 840
    :cond_6e
    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v6, v6, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v7, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v8, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 841
    :cond_81
    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 842
    .end local v0    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v5    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    goto :goto_2c

    .line 849
    :cond_87
    :goto_87
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 850
    .local v5, "uptimeMillis":J
    iget-wide v7, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    const-wide/16 v9, 0x1388

    add-long/2addr v7, v9

    cmp-long v0, v5, v7

    if-lez v0, :cond_102

    .line 851
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dropbox_quota_percent"

    const/16 v8, 0xa

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v7, v0

    .line 853
    .local v7, "quotaPercent":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "dropbox_reserve_percent"

    invoke-static {v0, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v8, v0

    .line 855
    .local v8, "reservePercent":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "dropbox_quota_kb"

    const/16 v10, 0x1400

    invoke-static {v0, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v9, v0

    .line 858
    .local v9, "quotaKb":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_b9
    .catchall {:try_start_3 .. :try_end_b9} :catchall_1da

    move-object v10, v0

    .line 860
    .local v10, "dirPath":Ljava/lang/String;
    :try_start_ba
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0, v10}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ba .. :try_end_bf} :catch_e8
    .catchall {:try_start_ba .. :try_end_bf} :catchall_1da

    .line 863
    nop

    .line 864
    :try_start_c0
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    .line 865
    .local v0, "available":I
    iget-object v11, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    mul-int/2addr v11, v8

    div-int/lit8 v11, v11, 0x64

    sub-int v11, v0, v11

    .line 866
    .local v11, "nonreserved":I
    mul-int/lit16 v12, v9, 0x400

    iget v13, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    div-int/2addr v12, v13

    .line 867
    .local v12, "maximum":I
    const/4 v13, 0x0

    mul-int v14, v11, v7

    div-int/lit8 v14, v14, 0x64

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    iput v13, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 868
    iput-wide v5, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .end local v0    # "available":I
    .end local v7    # "quotaPercent":I
    .end local v8    # "reservePercent":I
    .end local v9    # "quotaKb":I
    .end local v10    # "dirPath":Ljava/lang/String;
    .end local v11    # "nonreserved":I
    .end local v12    # "maximum":I
    goto :goto_102

    .line 861
    .restart local v7    # "quotaPercent":I
    .restart local v8    # "reservePercent":I
    .restart local v9    # "quotaKb":I
    .restart local v10    # "dirPath":Ljava/lang/String;
    :catch_e8
    move-exception v0

    .line 862
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t restat: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 885
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "quotaPercent":I
    .end local v8    # "reservePercent":I
    .end local v9    # "quotaKb":I
    .end local v10    # "dirPath":Ljava/lang/String;
    :cond_102
    :goto_102
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v7, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-le v0, v7, :cond_1ce

    .line 887
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .local v0, "unsqueezed":I
    const/4 v7, 0x0

    .line 888
    .local v7, "squeezed":I
    new-instance v8, Ljava/util/TreeSet;

    iget-object v9, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 889
    .local v8, "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v7

    move v7, v0

    .end local v0    # "unsqueezed":I
    .local v7, "unsqueezed":I
    .local v10, "squeezed":I
    :goto_120
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 890
    .local v0, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-lez v10, :cond_137

    iget v11, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v12, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v12, v7

    div-int/2addr v12, v10

    if-gt v11, v12, :cond_137

    .line 891
    goto :goto_13d

    .line 893
    :cond_137
    iget v11, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    sub-int/2addr v7, v11

    .line 894
    add-int/lit8 v10, v10, 0x1

    .line 895
    .end local v0    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    goto :goto_120

    .line 896
    :cond_13d
    :goto_13d
    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v0, v7

    div-int/2addr v0, v10

    move v9, v0

    .line 899
    .local v9, "tagQuota":I
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_146
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ce

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    move-object v12, v0

    .line 900
    .local v12, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v13, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-ge v0, v13, :cond_161

    .line 916
    .end local v7    # "unsqueezed":I
    .end local v8    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .end local v9    # "tagQuota":I
    .end local v10    # "squeezed":I
    .end local v12    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    move/from16 v16, v2

    move-wide/from16 v17, v3

    goto/16 :goto_1d2

    .line 901
    .restart local v7    # "unsqueezed":I
    .restart local v8    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .restart local v9    # "tagQuota":I
    .restart local v10    # "squeezed":I
    .restart local v12    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_161
    :goto_161
    iget v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    if-le v0, v9, :cond_1c4

    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c4

    .line 902
    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v13, v0

    .line 903
    .local v13, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    iget v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v14, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v0, v14

    iput v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 904
    :cond_185
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_198

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v14, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v15, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v14, v15

    iput v14, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_198
    .catchall {:try_start_c0 .. :try_end_198} :catchall_1da

    .line 907
    :cond_198
    :try_start_198
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v13, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 908
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v14, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v15, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_1a3} :catch_1b2
    .catchall {:try_start_198 .. :try_end_1a3} :catchall_1da

    move/from16 v16, v2

    move-wide/from16 v17, v3

    :try_start_1a7
    iget-wide v2, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .end local v2    # "ageSeconds":I
    .end local v3    # "cutoffMillis":J
    .local v16, "ageSeconds":I
    .local v17, "cutoffMillis":J
    invoke-direct {v0, v14, v15, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_1af
    .catch Ljava/io/IOException; {:try_start_1a7 .. :try_end_1af} :catch_1b0
    .catchall {:try_start_1a7 .. :try_end_1af} :catchall_1da

    .line 911
    goto :goto_1be

    .line 909
    :catch_1b0
    move-exception v0

    goto :goto_1b7

    .end local v16    # "ageSeconds":I
    .end local v17    # "cutoffMillis":J
    .restart local v2    # "ageSeconds":I
    .restart local v3    # "cutoffMillis":J
    :catch_1b2
    move-exception v0

    move/from16 v16, v2

    move-wide/from16 v17, v3

    .line 910
    .end local v2    # "ageSeconds":I
    .end local v3    # "cutoffMillis":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "ageSeconds":I
    .restart local v17    # "cutoffMillis":J
    :goto_1b7
    :try_start_1b7
    const-string v2, "DropBoxManagerService"

    const-string v3, "Can\'t write tombstone file"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 912
    .end local v0    # "e":Ljava/io/IOException;
    .end local v13    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :goto_1be
    nop

    .line 901
    move/from16 v2, v16

    move-wide/from16 v3, v17

    goto :goto_161

    .line 913
    .end local v12    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    .end local v16    # "ageSeconds":I
    .end local v17    # "cutoffMillis":J
    .restart local v2    # "ageSeconds":I
    .restart local v3    # "cutoffMillis":J
    :cond_1c4
    move/from16 v16, v2

    move-wide/from16 v17, v3

    .line 899
    .end local v2    # "ageSeconds":I
    .end local v3    # "cutoffMillis":J
    .restart local v16    # "ageSeconds":I
    .restart local v17    # "cutoffMillis":J
    move/from16 v2, v16

    move-wide/from16 v3, v17

    goto/16 :goto_146

    .line 916
    .end local v7    # "unsqueezed":I
    .end local v8    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .end local v9    # "tagQuota":I
    .end local v10    # "squeezed":I
    .end local v16    # "ageSeconds":I
    .end local v17    # "cutoffMillis":J
    .restart local v2    # "ageSeconds":I
    .restart local v3    # "cutoffMillis":J
    :cond_1ce
    move/from16 v16, v2

    move-wide/from16 v17, v3

    .end local v2    # "ageSeconds":I
    .end local v3    # "cutoffMillis":J
    .restart local v16    # "ageSeconds":I
    .restart local v17    # "cutoffMillis":J
    :goto_1d2
    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    iget v2, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1d6
    .catchall {:try_start_1b7 .. :try_end_1d6} :catchall_1da

    mul-int/2addr v0, v2

    int-to-long v2, v0

    monitor-exit p0

    return-wide v2

    .line 824
    .end local v5    # "uptimeMillis":J
    .end local v16    # "ageSeconds":I
    .end local v17    # "cutoffMillis":J
    :catchall_1da
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    throw v0
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .registers 30
    .param p1, "entry"    # Landroid/os/DropBoxManager$Entry;

    move-object/from16 v1, p0

    .line 229
    const/4 v2, 0x0

    .line 230
    .local v2, "temp":Ljava/io/File;
    const/4 v3, 0x0

    .line 231
    .local v3, "input":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 232
    .local v4, "output":Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 234
    .local v5, "tag":Ljava/lang/String;
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v0

    .line 235
    .local v0, "flags":I
    and-int/lit8 v6, v0, 0x1

    if-nez v6, :cond_15c

    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V

    .line 238
    invoke-virtual {v1, v5}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v6
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_19} :catch_164
    .catchall {:try_start_a .. :try_end_19} :catchall_162

    if-nez v6, :cond_2a

    .line 313
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 316
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 238
    :cond_29
    return-void

    .line 239
    :cond_2a
    :try_start_2a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v6

    .line 240
    .local v6, "max":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 242
    .local v8, "lastTrim":J
    iget v10, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    new-array v10, v10, [B

    .line 243
    .local v10, "buffer":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    move-object v3, v11

    .line 248
    const/4 v12, 0x0

    .line 249
    .local v12, "read":I
    :goto_3c
    array-length v13, v10

    if-ge v12, v13, :cond_4a

    .line 250
    array-length v13, v10

    sub-int/2addr v13, v12

    invoke-virtual {v3, v10, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    .line 251
    .local v13, "n":I
    if-gtz v13, :cond_48

    .line 251
    .end local v13    # "n":I
    goto :goto_4a

    .line 252
    .restart local v13    # "n":I
    :cond_48
    add-int/2addr v12, v13

    .line 253
    .end local v13    # "n":I
    goto :goto_3c

    .line 258
    :cond_4a
    :goto_4a
    new-instance v13, Ljava/io/File;

    iget-object v14, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "drop"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    move-wide/from16 v17, v6

    invoke-virtual {v11}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    .end local v6    # "max":J
    .local v17, "max":J
    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v13, v14, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v13

    .line 259
    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 260
    .local v6, "bufferSize":I
    const/16 v7, 0x1000

    if-le v6, v7, :cond_7a

    const/16 v6, 0x1000

    .line 261
    :cond_7a
    const/16 v7, 0x200

    if-ge v6, v7, :cond_80

    const/16 v6, 0x200

    .line 262
    :cond_80
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 263
    .local v7, "foutput":Ljava/io/FileOutputStream;
    new-instance v11, Ljava/io/BufferedOutputStream;

    invoke-direct {v11, v7, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v4, v11

    .line 264
    array-length v11, v10

    if-ne v12, v11, :cond_9a

    and-int/lit8 v11, v0, 0x4

    if-nez v11, :cond_9a

    .line 265
    new-instance v11, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v11, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v11

    .line 266
    or-int/lit8 v0, v0, 0x4

    .line 270
    :cond_9a
    :goto_9a
    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 273
    .local v13, "now":J
    sub-long v15, v13, v8

    const-wide/16 v19, 0x7530

    cmp-long v15, v15, v19

    if-lez v15, :cond_b5

    .line 274
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v15

    .line 275
    .end local v17    # "max":J
    .local v15, "max":J
    move-wide v8, v13

    .line 278
    move-wide/from16 v26, v8

    move-wide v8, v15

    move-wide/from16 v15, v26

    goto :goto_b8

    .line 278
    .end local v15    # "max":J
    .restart local v17    # "max":J
    :cond_b5
    move-wide v15, v8

    move-wide/from16 v8, v17

    .line 278
    .end local v17    # "max":J
    .local v8, "max":J
    .local v15, "lastTrim":J
    :goto_b8
    invoke-virtual {v3, v10}, Ljava/io/InputStream;->read([B)I

    move-result v17

    move/from16 v12, v17

    .line 279
    if-gtz v12, :cond_c8

    .line 280
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 281
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 282
    const/4 v4, 0x0

    goto :goto_cb

    .line 284
    :cond_c8
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 287
    :goto_cb
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v17

    .line 288
    .local v17, "len":J
    cmp-long v19, v17, v8

    if-lez v19, :cond_10d

    .line 289
    const-string v11, "DropBoxManagerService"

    move/from16 v21, v6

    new-instance v6, Ljava/lang/StringBuilder;

    .line 289
    .end local v6    # "bufferSize":I
    .local v21, "bufferSize":I
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v7

    const-string v7, "Dropping: "

    .line 289
    .end local v7    # "foutput":Ljava/io/FileOutputStream;
    .local v22, "foutput":Ljava/io/FileOutputStream;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v23, v13

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v13

    .end local v13    # "now":J
    .local v23, "now":J
    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " bytes)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 291
    const/4 v2, 0x0

    .line 292
    goto :goto_113

    .line 294
    .end local v17    # "len":J
    .end local v21    # "bufferSize":I
    .end local v22    # "foutput":Ljava/io/FileOutputStream;
    .end local v23    # "now":J
    .restart local v6    # "bufferSize":I
    .restart local v7    # "foutput":Ljava/io/FileOutputStream;
    :cond_10d
    move/from16 v21, v6

    move-object/from16 v22, v7

    .line 294
    .end local v6    # "bufferSize":I
    .end local v7    # "foutput":Ljava/io/FileOutputStream;
    .restart local v21    # "bufferSize":I
    .restart local v22    # "foutput":Ljava/io/FileOutputStream;
    if-gtz v12, :cond_151

    .line 296
    :goto_113
    invoke-direct {v1, v2, v5, v0}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v6

    .line 297
    .local v6, "time":J
    const/4 v2, 0x0

    .line 299
    new-instance v11, Landroid/content/Intent;

    const-string v13, "android.intent.action.DROPBOX_ENTRY_ADDED"

    invoke-direct {v11, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v11, "dropboxIntent":Landroid/content/Intent;
    const-string/jumbo v13, "tag"

    invoke-virtual {v11, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string/jumbo v13, "time"

    invoke-virtual {v11, v13, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 302
    iget-boolean v13, v1, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    if-nez v13, :cond_134

    .line 303
    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual {v11, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 309
    :cond_134
    iget-object v13, v1, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    iget-object v14, v1, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    move/from16 v25, v0

    const/4 v0, 0x1

    .line 309
    .end local v0    # "flags":I
    .local v25, "flags":I
    invoke-virtual {v14, v0, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_142} :catch_164
    .catchall {:try_start_2a .. :try_end_142} :catchall_162

    .line 313
    .end local v6    # "time":J
    .end local v8    # "max":J
    .end local v10    # "buffer":[B
    .end local v11    # "dropboxIntent":Landroid/content/Intent;
    .end local v12    # "read":I
    .end local v15    # "lastTrim":J
    .end local v21    # "bufferSize":I
    .end local v22    # "foutput":Ljava/io/FileOutputStream;
    .end local v25    # "flags":I
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 316
    if-eqz v2, :cond_187

    :goto_14d
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_187

    .line 270
    .restart local v0    # "flags":I
    .restart local v8    # "max":J
    .restart local v10    # "buffer":[B
    .restart local v12    # "read":I
    .restart local v15    # "lastTrim":J
    .restart local v21    # "bufferSize":I
    .restart local v22    # "foutput":Ljava/io/FileOutputStream;
    :cond_151
    move/from16 v25, v0

    move-wide/from16 v17, v8

    move-wide v8, v15

    move/from16 v6, v21

    move-object/from16 v7, v22

    .line 270
    .end local v0    # "flags":I
    .restart local v25    # "flags":I
    goto/16 :goto_9a

    .line 235
    .end local v8    # "max":J
    .end local v10    # "buffer":[B
    .end local v12    # "read":I
    .end local v15    # "lastTrim":J
    .end local v21    # "bufferSize":I
    .end local v22    # "foutput":Ljava/io/FileOutputStream;
    .end local v25    # "flags":I
    .restart local v0    # "flags":I
    :cond_15c
    :try_start_15c
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_162} :catch_164
    .catchall {:try_start_15c .. :try_end_162} :catchall_162

    .line 313
    .end local v0    # "flags":I
    :catchall_162
    move-exception v0

    goto :goto_188

    .line 310
    :catch_164
    move-exception v0

    .line 311
    .local v0, "e":Ljava/io/IOException;
    :try_start_165
    const-string v6, "DropBoxManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t write: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17b
    .catchall {:try_start_165 .. :try_end_17b} :catchall_162

    .line 313
    .end local v0    # "e":Ljava/io/IOException;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 316
    if-eqz v2, :cond_187

    goto :goto_14d

    .line 318
    :cond_187
    :goto_187
    return-void

    .line 313
    :goto_188
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 316
    if-eqz v2, :cond_196

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_196
    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 38
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    .line 365
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "DropBoxManagerService"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_38a

    if-nez v0, :cond_15

    monitor-exit p0

    return-void

    .line 368
    :cond_15
    :try_start_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_36b
    .catchall {:try_start_15 .. :try_end_18} :catchall_38a

    .line 373
    nop

    .line 377
    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    .line 378
    .local v4, "out":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 378
    .local v0, "doPrint":Z
    const/4 v5, 0x0

    .line 379
    .local v5, "doFile":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v6, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v8, v5

    move v5, v0

    const/4 v0, 0x0

    .line 380
    .local v0, "i":I
    .local v5, "doPrint":Z
    .local v8, "doFile":Z
    :goto_29
    if-eqz v3, :cond_b4

    array-length v9, v3

    if-ge v0, v9, :cond_b4

    .line 381
    aget-object v9, v3, v0

    const-string v10, "-p"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_af

    aget-object v9, v3, v0

    const-string v10, "--print"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43

    goto :goto_af

    .line 383
    :cond_43
    aget-object v9, v3, v0

    const-string v10, "-f"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_ad

    aget-object v9, v3, v0

    const-string v10, "--file"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_58

    goto :goto_ad

    .line 385
    :cond_58
    aget-object v9, v3, v0

    const-string v10, "-h"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8d

    aget-object v9, v3, v0

    const-string v10, "--help"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d

    goto :goto_8d

    .line 393
    :cond_6d
    aget-object v9, v3, v0

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_87

    .line 394
    const-string v9, "Unknown argument: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v3, v0

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b0

    .line 396
    :cond_87
    aget-object v9, v3, v0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    .line 386
    :cond_8d
    :goto_8d
    const-string v7, "Dropbox (dropbox) dump options:"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    const-string v7, "  [-h|--help] [-p|--print] [-f|--file] [timestamp]"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    const-string v7, "    -h|--help: print this help"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    const-string v7, "    -p|--print: print full contents of each entry"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    const-string v7, "    -f|--file: print path of each entry\'s file"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    const-string v7, "  [timestamp] optionally filters to only those entries."

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_19 .. :try_end_ab} :catchall_38a

    .line 392
    monitor-exit p0

    return-void

    .line 384
    :cond_ad
    :goto_ad
    const/4 v8, 0x1

    goto :goto_b0

    .line 382
    :cond_af
    :goto_af
    const/4 v5, 0x1

    .line 380
    :goto_b0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_29

    .line 400
    .end local v0    # "i":I
    :cond_b4
    :try_start_b4
    const-string v0, "Drop box contents: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string v0, "Max entries: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_101

    .line 404
    const-string v0, "Searching for:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_fc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "a":Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .end local v9    # "a":Ljava/lang/String;
    goto :goto_e7

    .line 406
    :cond_fc
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_101
    const/4 v0, 0x0

    .line 409
    .local v0, "numFound":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 410
    .local v9, "numArgs":I
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 411
    .local v10, "time":Landroid/text/format/Time;
    const-string v11, "\n"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget-object v11, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v11, v11, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v11}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_118
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_342

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 413
    .local v12, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-wide v13, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-virtual {v10, v13, v14}, Landroid/text/format/Time;->set(J)V

    .line 414
    const-string v13, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v10, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 415
    .local v13, "date":Ljava/lang/String;
    const/4 v14, 0x1

    .line 416
    .local v14, "match":Z
    move v15, v14

    const/4 v14, 0x0

    .line 416
    .local v14, "i":I
    .local v15, "match":Z
    :goto_132
    const/16 v16, 0x1

    if-ge v14, v9, :cond_15f

    if-eqz v15, :cond_15f

    .line 417
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v18, v17

    .line 418
    .local v18, "arg":Ljava/lang/String;
    move-object/from16 v7, v18

    invoke-virtual {v13, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    .line 418
    .end local v18    # "arg":Ljava/lang/String;
    .local v7, "arg":Ljava/lang/String;
    if-nez v17, :cond_156

    move-object/from16 v19, v6

    iget-object v6, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 418
    .end local v6    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_153

    goto :goto_158

    :cond_153
    const/16 v16, 0x0

    goto :goto_158

    .line 418
    .end local v19    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_156
    move-object/from16 v19, v6

    .line 418
    .end local v6    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_158
    move/from16 v15, v16

    .line 416
    .end local v7    # "arg":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, v19

    goto :goto_132

    .line 420
    .end local v14    # "i":I
    .end local v19    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_15f
    move-object/from16 v19, v6

    .line 420
    .end local v6    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v15, :cond_166

    .line 412
    .end local v12    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "date":Ljava/lang/String;
    .end local v15    # "match":Z
    move-object/from16 v6, v19

    goto :goto_118

    .line 422
    .restart local v12    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v13    # "date":Ljava/lang/String;
    .restart local v15    # "match":Z
    :cond_166
    add-int/lit8 v6, v0, 0x1

    .line 423
    .end local v0    # "numFound":I
    .local v6, "numFound":I
    if-eqz v5, :cond_16f

    const-string v0, "========================================\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_16f
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v0, :cond_17e

    const-string v0, "(no tag)"

    goto :goto_180

    :cond_17e
    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    :goto_180
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v12, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    move-object v7, v0

    .line 427
    .local v7, "file":Ljava/io/File;
    if-nez v7, :cond_19c

    .line 428
    const-string v0, " (no file)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    nop

    .line 412
    .end local v7    # "file":Ljava/io/File;
    .end local v12    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "date":Ljava/lang/String;
    .end local v15    # "match":Z
    :goto_192
    move/from16 v30, v6

    move/from16 v28, v8

    move/from16 v26, v9

    move-object/from16 v27, v10

    goto/16 :goto_336

    .line 430
    .restart local v7    # "file":Ljava/io/File;
    .restart local v12    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v13    # "date":Ljava/lang/String;
    .restart local v15    # "match":Z
    :cond_19c
    iget v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a8

    .line 431
    const-string v0, " (contents lost)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    goto :goto_192

    .line 434
    :cond_1a8
    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    iget v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1b8

    const-string v0, "compressed "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_1b8
    iget v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1c2

    const-string/jumbo v0, "text"

    goto :goto_1c4

    :cond_1c2
    const-string v0, "data"

    :goto_1c4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v26, v9

    move-object/from16 v27, v10

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 437
    .end local v9    # "numArgs":I
    .end local v10    # "time":Landroid/text/format/Time;
    .local v26, "numArgs":I
    .local v27, "time":Landroid/text/format/Time;
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    if-nez v8, :cond_1e6

    if-eqz v5, :cond_1f9

    iget v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1f9

    .line 441
    :cond_1e6
    if-nez v5, :cond_1ed

    const-string v0, "    "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_1ed
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_1f9
    iget v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_1fb
    .catchall {:try_start_b4 .. :try_end_1fb} :catchall_38a

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_32a

    if-nez v5, :cond_20a

    if-nez v8, :cond_204

    goto :goto_20a

    .line 495
    :cond_204
    move/from16 v30, v6

    move/from16 v28, v8

    goto/16 :goto_32e

    .line 446
    :cond_20a
    :goto_20a
    const/4 v9, 0x0

    .line 447
    .local v9, "dbe":Landroid/os/DropBoxManager$Entry;
    const/4 v0, 0x0

    move-object v10, v0

    .line 449
    .local v10, "isr":Ljava/io/InputStreamReader;
    :try_start_20d
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v14, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_211
    .catch Ljava/io/IOException; {:try_start_20d .. :try_end_211} :catch_2e0
    .catchall {:try_start_20d .. :try_end_211} :catchall_2d7

    move/from16 v28, v8

    move-object/from16 v29, v9

    :try_start_215
    iget-wide v8, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J
    :try_end_217
    .catch Ljava/io/IOException; {:try_start_215 .. :try_end_217} :catch_2d1
    .catchall {:try_start_215 .. :try_end_217} :catchall_2ca

    .line 449
    .end local v8    # "doFile":Z
    .end local v9    # "dbe":Landroid/os/DropBoxManager$Entry;
    .local v28, "doFile":Z
    .local v29, "dbe":Landroid/os/DropBoxManager$Entry;
    move/from16 v30, v6

    :try_start_219
    iget v6, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 449
    .end local v6    # "numFound":I
    .local v30, "numFound":I
    move-object/from16 v20, v0

    move-object/from16 v21, v14

    move-wide/from16 v22, v8

    move-object/from16 v24, v7

    move/from16 v25, v6

    invoke-direct/range {v20 .. v25}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_228
    .catch Ljava/io/IOException; {:try_start_219 .. :try_end_228} :catch_2c6
    .catchall {:try_start_219 .. :try_end_228} :catchall_2c1

    move-object v9, v0

    .line 452
    .end local v29    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v9    # "dbe":Landroid/os/DropBoxManager$Entry;
    const/16 v0, 0xa

    if-eqz v5, :cond_27a

    .line 453
    :try_start_22d
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v10, v6

    .line 454
    const/16 v6, 0x1000

    new-array v6, v6, [C

    .line 455
    .local v6, "buf":[C
    const/4 v8, 0x0

    .line 457
    .local v8, "newline":Z
    :goto_23c
    invoke-virtual {v10, v6}, Ljava/io/InputStreamReader;->read([C)I

    move-result v14

    .line 458
    .local v14, "n":I
    if-gtz v14, :cond_24b

    .line 468
    .end local v14    # "n":I
    if-nez v8, :cond_249

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .end local v6    # "buf":[C
    .end local v8    # "newline":Z
    :cond_249
    goto/16 :goto_2b8

    .line 459
    .restart local v6    # "buf":[C
    .restart local v8    # "newline":Z
    .restart local v14    # "n":I
    :cond_24b
    move/from16 v31, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 460
    .end local v8    # "newline":Z
    .local v31, "newline":Z
    add-int/lit8 v8, v14, -0x1

    aget-char v8, v6, v8

    if-ne v8, v0, :cond_25a

    move/from16 v8, v16

    goto :goto_25b

    :cond_25a
    const/4 v8, 0x0

    .line 463
    .end local v31    # "newline":Z
    .restart local v8    # "newline":Z
    :goto_25b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    move-object/from16 v32, v6

    const/high16 v6, 0x10000

    .line 463
    .end local v6    # "buf":[C
    .local v32, "buf":[C
    if-le v0, v6, :cond_271

    .line 464
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 465
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 465
    .end local v14    # "n":I
    goto :goto_272

    .line 467
    :cond_271
    const/4 v6, 0x0

    .line 455
    :goto_272
    move-object/from16 v6, v32

    const/16 v0, 0xa

    goto :goto_23c

    .line 481
    .end local v8    # "newline":Z
    .end local v32    # "buf":[C
    :catch_277
    move-exception v0

    goto/16 :goto_2e7

    .line 470
    :cond_27a
    const/4 v6, 0x0

    const/16 v0, 0x46

    invoke-virtual {v9, v0}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 471
    .local v8, "text":Ljava/lang/String;
    const-string v14, "    "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    if-nez v8, :cond_290

    .line 473
    const-string v0, "[null]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    move-object/from16 v33, v8

    goto :goto_2b3

    .line 475
    :cond_290
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v14, v0, :cond_297

    goto :goto_299

    :cond_297
    move/from16 v16, v6

    :goto_299
    move/from16 v0, v16

    .line 476
    .local v0, "truncated":Z
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const/16 v6, 0x2f

    move-object/from16 v33, v8

    const/16 v8, 0xa

    invoke-virtual {v14, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 476
    .end local v8    # "text":Ljava/lang/String;
    .local v33, "text":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    if-eqz v0, :cond_2b3

    const-string v6, " ..."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .end local v0    # "truncated":Z
    :cond_2b3
    :goto_2b3
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2b8
    .catch Ljava/io/IOException; {:try_start_22d .. :try_end_2b8} :catch_277
    .catchall {:try_start_22d .. :try_end_2b8} :catchall_31b

    .line 485
    .end local v33    # "text":Ljava/lang/String;
    :goto_2b8
    :try_start_2b8
    invoke-virtual {v9}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_2bb
    .catchall {:try_start_2b8 .. :try_end_2bb} :catchall_38a

    .line 486
    if-eqz v10, :cond_32e

    .line 488
    :try_start_2bd
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_2c0
    .catch Ljava/io/IOException; {:try_start_2bd .. :try_end_2c0} :catch_319
    .catchall {:try_start_2bd .. :try_end_2c0} :catchall_38a

    goto :goto_318

    .line 485
    .end local v9    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v29    # "dbe":Landroid/os/DropBoxManager$Entry;
    :catchall_2c1
    move-exception v0

    move-object v6, v0

    move-object/from16 v9, v29

    goto :goto_31d

    .line 481
    :catch_2c6
    move-exception v0

    move-object/from16 v9, v29

    goto :goto_2e7

    .line 485
    .end local v30    # "numFound":I
    .local v6, "numFound":I
    :catchall_2ca
    move-exception v0

    move/from16 v30, v6

    move-object v6, v0

    move-object/from16 v9, v29

    .line 485
    .end local v6    # "numFound":I
    .restart local v30    # "numFound":I
    goto :goto_31d

    .line 481
    .end local v30    # "numFound":I
    .restart local v6    # "numFound":I
    :catch_2d1
    move-exception v0

    move/from16 v30, v6

    move-object/from16 v9, v29

    .line 481
    .end local v6    # "numFound":I
    .restart local v30    # "numFound":I
    goto :goto_2e7

    .line 485
    .end local v28    # "doFile":Z
    .end local v29    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v30    # "numFound":I
    .restart local v6    # "numFound":I
    .local v8, "doFile":Z
    .restart local v9    # "dbe":Landroid/os/DropBoxManager$Entry;
    :catchall_2d7
    move-exception v0

    move/from16 v30, v6

    move/from16 v28, v8

    move-object/from16 v29, v9

    move-object v6, v0

    .line 485
    .end local v6    # "numFound":I
    .end local v8    # "doFile":Z
    .end local v9    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v28    # "doFile":Z
    .restart local v29    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v30    # "numFound":I
    goto :goto_31d

    .line 481
    .end local v28    # "doFile":Z
    .end local v29    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v30    # "numFound":I
    .restart local v6    # "numFound":I
    .restart local v8    # "doFile":Z
    .restart local v9    # "dbe":Landroid/os/DropBoxManager$Entry;
    :catch_2e0
    move-exception v0

    move/from16 v30, v6

    move/from16 v28, v8

    move-object/from16 v29, v9

    .line 482
    .end local v6    # "numFound":I
    .end local v8    # "doFile":Z
    .local v0, "e":Ljava/io/IOException;
    .restart local v28    # "doFile":Z
    .restart local v30    # "numFound":I
    :goto_2e7
    :try_start_2e7
    const-string v6, "*** "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const-string v6, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can\'t read: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30e
    .catchall {:try_start_2e7 .. :try_end_30e} :catchall_31b

    .line 485
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v9, :cond_313

    :try_start_310
    invoke-virtual {v9}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_313
    .catchall {:try_start_310 .. :try_end_313} :catchall_38a

    .line 486
    :cond_313
    if-eqz v10, :cond_32e

    .line 488
    :try_start_315
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_318
    .catch Ljava/io/IOException; {:try_start_315 .. :try_end_318} :catch_319
    .catchall {:try_start_315 .. :try_end_318} :catchall_38a

    .line 490
    .end local v9    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    :goto_318
    goto :goto_32e

    .line 489
    .restart local v9    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    :catch_319
    move-exception v0

    goto :goto_318

    .line 485
    :catchall_31b
    move-exception v0

    move-object v6, v0

    :goto_31d
    if-eqz v9, :cond_322

    :try_start_31f
    invoke-virtual {v9}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_322
    .catchall {:try_start_31f .. :try_end_322} :catchall_38a

    .line 486
    :cond_322
    if-eqz v10, :cond_329

    .line 488
    :try_start_324
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_327
    .catch Ljava/io/IOException; {:try_start_324 .. :try_end_327} :catch_328
    .catchall {:try_start_324 .. :try_end_327} :catchall_38a

    .line 490
    goto :goto_329

    .line 489
    :catch_328
    move-exception v0

    .line 490
    :cond_329
    :goto_329
    :try_start_329
    throw v6

    .line 495
    .end local v9    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .end local v28    # "doFile":Z
    .end local v30    # "numFound":I
    .restart local v6    # "numFound":I
    .restart local v8    # "doFile":Z
    :cond_32a
    move/from16 v30, v6

    move/from16 v28, v8

    .line 495
    .end local v6    # "numFound":I
    .end local v8    # "doFile":Z
    .restart local v28    # "doFile":Z
    .restart local v30    # "numFound":I
    :cond_32e
    :goto_32e
    if-eqz v5, :cond_335

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .end local v7    # "file":Ljava/io/File;
    .end local v12    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "date":Ljava/lang/String;
    .end local v15    # "match":Z
    :cond_335
    nop

    .line 412
    .end local v26    # "numArgs":I
    .end local v27    # "time":Landroid/text/format/Time;
    .end local v28    # "doFile":Z
    .end local v30    # "numFound":I
    .restart local v6    # "numFound":I
    .restart local v8    # "doFile":Z
    .local v9, "numArgs":I
    .local v10, "time":Landroid/text/format/Time;
    :goto_336
    move-object/from16 v6, v19

    move/from16 v9, v26

    move-object/from16 v10, v27

    move/from16 v8, v28

    move/from16 v0, v30

    .line 412
    .end local v6    # "numFound":I
    .end local v8    # "doFile":Z
    .end local v9    # "numArgs":I
    .end local v10    # "time":Landroid/text/format/Time;
    .restart local v26    # "numArgs":I
    .restart local v27    # "time":Landroid/text/format/Time;
    .restart local v28    # "doFile":Z
    .restart local v30    # "numFound":I
    goto/16 :goto_118

    .line 498
    .end local v19    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "numArgs":I
    .end local v27    # "time":Landroid/text/format/Time;
    .end local v28    # "doFile":Z
    .end local v30    # "numFound":I
    .local v0, "numFound":I
    .local v6, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "doFile":Z
    .restart local v9    # "numArgs":I
    .restart local v10    # "time":Landroid/text/format/Time;
    :cond_342
    move-object/from16 v19, v6

    move/from16 v28, v8

    move/from16 v26, v9

    move-object/from16 v27, v10

    .line 498
    .end local v6    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "doFile":Z
    .end local v9    # "numArgs":I
    .end local v10    # "time":Landroid/text/format/Time;
    .restart local v19    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v26    # "numArgs":I
    .restart local v27    # "time":Landroid/text/format/Time;
    .restart local v28    # "doFile":Z
    if-nez v0, :cond_351

    const-string v6, "(No entries found.)\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :cond_351
    if-eqz v3, :cond_356

    array-length v6, v3

    if-nez v6, :cond_362

    .line 501
    :cond_356
    if-nez v5, :cond_35d

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :cond_35d
    const-string v6, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_362
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_369
    .catchall {:try_start_329 .. :try_end_369} :catchall_38a

    .line 507
    monitor-exit p0

    return-void

    .line 369
    .end local v0    # "numFound":I
    .end local v4    # "out":Ljava/lang/StringBuilder;
    .end local v5    # "doPrint":Z
    .end local v19    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "numArgs":I
    .end local v27    # "time":Landroid/text/format/Time;
    .end local v28    # "doFile":Z
    :catch_36b
    move-exception v0

    move-object v4, v0

    .line 370
    .local v0, "e":Ljava/io/IOException;
    :try_start_36d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t initialize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    const-string v4, "DropBoxManagerService"

    const-string v5, "Can\'t init"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_388
    .catchall {:try_start_36d .. :try_end_388} :catchall_38a

    .line 372
    monitor-exit p0

    return-void

    .line 364
    .end local v0    # "e":Ljava/io/IOException;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_38a
    move-exception v0

    monitor-exit p0

    .line 364
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    throw v0
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .registers 16
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J

    monitor-enter p0

    .line 331
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_LOGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_98

    if-nez v0, :cond_90

    .line 337
    const/4 v0, 0x0

    :try_start_e
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_86
    .catchall {:try_start_e .. :try_end_11} :catchall_98

    .line 341
    nop

    .line 343
    if-nez p1, :cond_17

    :try_start_14
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    goto :goto_1f

    :cond_17
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_98

    .line 344
    .local v1, "list":Lcom/android/server/DropBoxManagerService$FileList;
    :goto_1f
    if-nez v1, :cond_23

    monitor-exit p0

    return-object v0

    .line 346
    :cond_23
    :try_start_23
    iget-object v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v4, 0x1

    add-long/2addr v4, p2

    invoke-direct {v3, v4, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 347
    .local v3, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v4, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v4, :cond_46

    .end local v3    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    goto :goto_35

    .line 348
    .restart local v3    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_46
    iget v4, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_57

    .line 349
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v2, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v4, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v2, v4, v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_55
    .catchall {:try_start_23 .. :try_end_55} :catchall_98

    monitor-exit p0

    return-object v0

    .line 351
    :cond_57
    :try_start_57
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_98

    .line 353
    .local v4, "file":Ljava/io/File;
    :try_start_5d
    new-instance v11, Landroid/os/DropBoxManager$Entry;

    iget-object v6, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v7, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v10, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object v5, v11

    move-object v9, v4

    invoke-direct/range {v5 .. v10}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_6a} :catch_6c
    .catchall {:try_start_5d .. :try_end_6a} :catchall_98

    monitor-exit p0

    return-object v11

    .line 355
    :catch_6c
    move-exception v5

    .line 356
    .local v5, "e":Ljava/io/IOException;
    :try_start_6d
    const-string v6, "DropBoxManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t read: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_6d .. :try_end_83} :catchall_98

    .line 359
    .end local v3    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_35

    .line 361
    :cond_84
    monitor-exit p0

    return-object v0

    .line 338
    .end local v1    # "list":Lcom/android/server/DropBoxManagerService$FileList;
    :catch_86
    move-exception v1

    .line 339
    .local v1, "e":Ljava/io/IOException;
    :try_start_87
    const-string v2, "DropBoxManagerService"

    const-string v3, "Can\'t init"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8e
    .catchall {:try_start_87 .. :try_end_8e} :catchall_98

    .line 340
    monitor-exit p0

    return-object v0

    .line 333
    .end local v1    # "e":Ljava/io/IOException;
    :cond_90
    :try_start_90
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "READ_LOGS permission required"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_98
    .catchall {:try_start_90 .. :try_end_98} :catchall_98

    .line 330
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "millis":J
    :catchall_98
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    throw p1
.end method

.method public getServiceStub()Lcom/android/internal/os/IDropBoxManagerService;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    return-object v0
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;

    .line 321
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 323
    .local v0, "token":J
    :try_start_4
    const-string v2, "disabled"

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dropbox:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_27

    .line 326
    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    return v2

    .line 326
    :catchall_27
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"    # I

    .line 201
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_a

    goto :goto_32

    .line 218
    :cond_a
    iput-boolean v1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    goto :goto_32

    .line 203
    :cond_d
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Lcom/android/server/DropBoxManagerService$4;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/DropBoxManagerService$4;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 215
    nop

    .line 221
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_32
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 193
    const-string v0, "dropbox"

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DropBoxManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 197
    return-void
.end method
