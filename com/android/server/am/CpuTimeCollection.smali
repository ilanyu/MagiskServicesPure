.class public Lcom/android/server/am/CpuTimeCollection;
.super Ljava/lang/Object;
.source "CpuTimeCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final FORMATE_RULE:Ljava/lang/String; = "yyyy-MM-dd-HH-mm-ss"

.field private static final TAG:Ljava/lang/String; = "CpuTimeCollection"

.field private static final WHICH:I

.field private static final mCpuCollectionLog:Landroid/util/LocalLog;

.field private static mCpuTimeModules:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;",
            ">;"
        }
    .end annotation
.end field

.field private static mRecordTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/CpuTimeCollection;->mCpuTimeModules:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/am/CpuTimeCollection;->DEBUG:Z

    .line 24
    new-instance v0, Landroid/util/LocalLog;

    sget-boolean v1, Lcom/android/server/am/CpuTimeCollection;->DEBUG:Z

    if-eqz v1, :cond_14

    const/16 v1, 0x1f4

    goto :goto_16

    :cond_14
    const/16 v1, 0xc8

    :goto_16
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v0, Lcom/android/server/am/CpuTimeCollection;->mCpuCollectionLog:Landroid/util/LocalLog;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 71
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/server/am/CpuTimeCollection;->mCpuTimeModules:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_10

    .line 72
    return-void

    .line 74
    :cond_10
    const-string v1, "\nDump Uid Cpu Time:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    sget-object v1, Lcom/android/server/am/CpuTimeCollection;->mCpuTimeModules:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Lcom/android/server/am/CpuTimeCollection;->mapValueCompareSort(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/CpuTimeCollection;->writeString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 76
    sget-object v1, Lcom/android/server/am/CpuTimeCollection;->mCpuCollectionLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p0, p1, p2}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private static getStatus(ZZ)I
    .registers 3
    .param p0, "screenOn"    # Z
    .param p1, "firstRecord"    # Z

    .line 140
    if-eqz p0, :cond_4

    const/4 v0, 0x2

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    or-int/2addr v0, p1

    return v0
.end method

.method private static mapValueCompareSort(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;",
            ">;>;"
        }
    .end annotation

    .line 95
    .local p0, "hashMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    .local v0, "CpuTimeModules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;>;>;"
    new-instance v1, Lcom/android/server/am/CpuTimeCollection$1;

    invoke-direct {v1}, Lcom/android/server/am/CpuTimeCollection$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 104
    return-object v0
.end method

.method private static recordUidCpuTime(ZZLjava/util/concurrent/ConcurrentHashMap;)V
    .registers 11
    .param p0, "screenOn"    # Z
    .param p1, "firstRecord"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p2, "subCpuTimeModules":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;>;"
    if-eqz p2, :cond_117

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_117

    .line 111
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 112
    .local v0, "strb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 113
    .local v1, "curTime":J
    sget-boolean v3, Lcom/android/server/am/CpuTimeCollection;->DEBUG:Z

    if-eqz v3, :cond_37

    const-string v3, "CpuTimeCollection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", firstRecord = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_37
    invoke-static {p0, p1}, Lcom/android/server/am/CpuTimeCollection;->getStatus(ZZ)I

    move-result v3

    .line 115
    .local v3, "status":I
    packed-switch v3, :pswitch_data_118

    goto/16 :goto_ff

    .line 128
    :pswitch_40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[first record screen on ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v5, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    goto/16 :goto_ff

    .line 124
    :pswitch_66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[screen_off ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "yyyy-MM-dd-HH-mm-ss"

    sget-wide v6, Lcom/android/server/am/CpuTimeCollection;->mRecordTime:J

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "yyyy-MM-dd-HH-mm-ss"

    .line 125
    invoke-static {v5, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    goto :goto_ff

    .line 121
    :pswitch_a0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[first record screen off ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v5, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    goto :goto_ff

    .line 117
    :pswitch_c5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[screen_on ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "yyyy-MM-dd-HH-mm-ss"

    sget-wide v6, Lcom/android/server/am/CpuTimeCollection;->mRecordTime:J

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "yyyy-MM-dd-HH-mm-ss"

    .line 118
    invoke-static {v5, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    nop

    .line 133
    :goto_ff
    sput-wide v1, Lcom/android/server/am/CpuTimeCollection;->mRecordTime:J

    .line 134
    const-string v4, "\ndump subtract cpu time:\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-static {p2}, Lcom/android/server/am/CpuTimeCollection;->mapValueCompareSort(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/am/CpuTimeCollection;->writeString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 136
    sget-object v4, Lcom/android/server/am/CpuTimeCollection;->mCpuCollectionLog:Landroid/util/LocalLog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 137
    return-void

    .line 109
    .end local v0    # "strb":Ljava/lang/StringBuilder;
    .end local v1    # "curTime":J
    .end local v3    # "status":I
    :cond_117
    :goto_117
    return-void

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_a0
        :pswitch_66
        :pswitch_40
    .end packed-switch
.end method

.method public static updateUidCpuTime(Lcom/android/internal/os/BatteryStatsImpl;ZZ)V
    .registers 26
    .param p0, "batteryStatsImpl"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p1, "screenOn"    # Z
    .param p2, "firstRecord"    # Z

    .line 30
    if-nez p0, :cond_3

    .line 31
    return-void

    .line 33
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v1

    .line 34
    .local v1, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    if-nez v1, :cond_a

    .line 35
    return-void

    .line 38
    :cond_a
    sget-wide v2, Lcom/android/server/am/CpuTimeCollection;->mRecordTime:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getStartClockTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1b

    .line 39
    sget-object v2, Lcom/android/server/am/CpuTimeCollection;->mCpuTimeModules:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 40
    const/4 v2, 0x1

    .end local p2    # "firstRecord":Z
    .local v2, "firstRecord":Z
    goto :goto_1d

    .line 42
    .end local v2    # "firstRecord":Z
    .restart local p2    # "firstRecord":Z
    :cond_1b
    move/from16 v2, p2

    .end local p2    # "firstRecord":Z
    .restart local v2    # "firstRecord":Z
    :goto_1d
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 43
    .local v3, "subCpuTimeModules":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 44
    .local v4, "NU":I
    const/4 v5, 0x0

    move v6, v5

    .local v6, "iu":I
    :goto_28
    if-ge v6, v4, :cond_a0

    .line 45
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 46
    .local v13, "uid":I
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Landroid/os/BatteryStats$Uid;

    .line 47
    .local v14, "uidStat":Landroid/os/BatteryStats$Uid;
    if-nez v14, :cond_3d

    .line 48
    nop

    .line 44
    move-object/from16 v22, v1

    move/from16 v21, v6

    goto :goto_9a

    .line 51
    :cond_3d
    invoke-virtual {v14, v5}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v11

    .line 52
    .local v11, "userCpuTimeUs":J
    invoke-virtual {v14, v5}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v9

    .line 53
    .local v9, "systemCpuTimeUs":J
    sget-object v7, Lcom/android/server/am/CpuTimeCollection;->mCpuTimeModules:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;

    .line 54
    .local v15, "currentItem":Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;
    if-eqz v15, :cond_7a

    .line 55
    new-instance v16, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;

    iget-wide v7, v15, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;->userCpuTimeUs:J

    sub-long v17, v11, v7

    iget-wide v7, v15, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;->systemCpuTimeUs:J

    sub-long v19, v9, v7

    move-object/from16 v7, v16

    move v8, v13

    move/from16 v21, v6

    move-wide v5, v9

    move-wide/from16 v9, v17

    .end local v6    # "iu":I
    .end local v9    # "systemCpuTimeUs":J
    .local v5, "systemCpuTimeUs":J
    .local v21, "iu":I
    move-object/from16 v22, v1

    move-wide v0, v11

    move-wide/from16 v11, v19

    .end local v1    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v11    # "userCpuTimeUs":J
    .local v0, "userCpuTimeUs":J
    .local v22, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;-><init>(IJJ)V

    .line 57
    .local v7, "subCpuTime":Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iput-wide v0, v15, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;->userCpuTimeUs:J

    .line 59
    iput-wide v5, v15, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;->systemCpuTimeUs:J

    .line 60
    .end local v7    # "subCpuTime":Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;
    goto :goto_9a

    .line 61
    .end local v0    # "userCpuTimeUs":J
    .end local v5    # "systemCpuTimeUs":J
    .end local v21    # "iu":I
    .end local v22    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v1    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v6    # "iu":I
    .restart local v9    # "systemCpuTimeUs":J
    .restart local v11    # "userCpuTimeUs":J
    :cond_7a
    move-object/from16 v22, v1

    move/from16 v21, v6

    move-wide v5, v9

    move-wide v0, v11

    .end local v1    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v6    # "iu":I
    .end local v9    # "systemCpuTimeUs":J
    .end local v11    # "userCpuTimeUs":J
    .restart local v0    # "userCpuTimeUs":J
    .restart local v5    # "systemCpuTimeUs":J
    .restart local v21    # "iu":I
    .restart local v22    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    new-instance v16, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;

    move-object/from16 v7, v16

    move v8, v13

    move-wide v9, v0

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;-><init>(IJJ)V

    .line 62
    .local v7, "newCpuTime":Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v8, Lcom/android/server/am/CpuTimeCollection;->mCpuTimeModules:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .end local v0    # "userCpuTimeUs":J
    .end local v5    # "systemCpuTimeUs":J
    .end local v7    # "newCpuTime":Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;
    .end local v13    # "uid":I
    .end local v14    # "uidStat":Landroid/os/BatteryStats$Uid;
    .end local v15    # "currentItem":Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;
    :goto_9a
    add-int/lit8 v6, v21, 0x1

    .end local v21    # "iu":I
    .restart local v6    # "iu":I
    move-object/from16 v1, v22

    const/4 v5, 0x0

    goto :goto_28

    .line 66
    .end local v6    # "iu":I
    .end local v22    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v1    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_a0
    move-object/from16 v22, v1

    .end local v1    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v22    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    move/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/android/server/am/CpuTimeCollection;->recordUidCpuTime(ZZLjava/util/concurrent/ConcurrentHashMap;)V

    .line 67
    return-void
.end method

.method private static writeString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 9
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;",
            ">;>;)V"
        }
    .end annotation

    .line 84
    .local p1, "CpuTimeModules":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;>;>;"
    const/4 v0, 0x0

    const/16 v1, 0x14

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 85
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;

    .line 86
    .local v2, "moduleStats":Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;
    if-eqz v2, :cond_39

    iget-wide v3, v2, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;->userCpuTimeUs:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2d

    iget-wide v3, v2, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;->systemCpuTimeUs:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_39

    .line 87
    :cond_2d
    invoke-virtual {v2}, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;>;"
    .end local v2    # "moduleStats":Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;
    :cond_39
    goto :goto_b

    .line 91
    :cond_3a
    return-void
.end method
