.class public Lcom/android/server/net/NetworkStatsActualCollection;
.super Ljava/lang/Object;
.source "NetworkStatsActualCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsActualCollection$Key;,
        Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "NetworkStatsActualCollection"

.field private static mAllUidNetworkStats:Landroid/net/NetworkStats;

.field private static final mNetworkCollectionLog:Landroid/util/LocalLog;

.field private static mRecordTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/net/NetworkStatsActualCollection;->mAllUidNetworkStats:Landroid/net/NetworkStats;

    .line 22
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/net/NetworkStatsActualCollection;->DEBUG:Z

    .line 24
    new-instance v0, Landroid/util/LocalLog;

    sget-boolean v1, Lcom/android/server/net/NetworkStatsActualCollection;->DEBUG:Z

    if-eqz v1, :cond_10

    const/16 v1, 0x1f4

    goto :goto_12

    :cond_10
    const/16 v1, 0xc8

    :goto_12
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v0, Lcom/android/server/net/NetworkStatsActualCollection;->mNetworkCollectionLog:Landroid/util/LocalLog;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 189
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/server/net/NetworkStatsActualCollection;->mAllUidNetworkStats:Landroid/net/NetworkStats;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsActualCollection;->getNetworkStatsMap(Landroid/net/NetworkStats;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 190
    .local v1, "newStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/net/NetworkStatsActualCollection$Key;Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;>;"
    const-string v2, "UID stats:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsActualCollection;->getSortedKeys(Landroid/util/ArrayMap;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ab

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsActualCollection$Key;

    .line 192
    .local v3, "key":Lcom/android/server/net/NetworkStatsActualCollection$Key;
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;

    .line 193
    .local v4, "item":Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;
    iget-wide v5, v4, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->rxBytes:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_46

    iget-wide v5, v4, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->rxPackets:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_46

    iget-wide v5, v4, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->txBytes:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_46

    iget-wide v5, v4, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->txPackets:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_a9

    .line 194
    :cond_46
    const-string v5, " uid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/net/NetworkStatsActualCollection$Key;->uid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    const-string v5, " set="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/net/NetworkStatsActualCollection$Key;->set:I

    invoke-static {v5}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v5, " tag="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/net/NetworkStatsActualCollection$Key;->tag:I

    invoke-static {v5}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v5, " if="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/net/NetworkStatsActualCollection$Key;->iface:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v5, " {["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string/jumbo v5, "rb="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v4, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->rxBytes:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 200
    const-string v5, " rp="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v4, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->rxPackets:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 201
    const-string v5, " tb="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v4, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->txBytes:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 202
    const-string v5, " tp="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v4, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->txPackets:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 203
    const-string v5, "]}\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .end local v3    # "key":Lcom/android/server/net/NetworkStatsActualCollection$Key;
    .end local v4    # "item":Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;
    :cond_a9
    goto/16 :goto_1a

    .line 206
    :cond_ab
    sget-object v2, Lcom/android/server/net/NetworkStatsActualCollection;->mNetworkCollectionLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p0, p1, p2}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method private static getNetworkStatsMap(Landroid/net/NetworkStats;)Landroid/util/ArrayMap;
    .registers 8
    .param p0, "allUidNetworkStats"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            ")",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/net/NetworkStatsActualCollection$Key;",
            "Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 61
    .local v0, "statsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/net/NetworkStatsActualCollection$Key;Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;>;"
    if-nez p0, :cond_8

    .line 62
    return-object v0

    .line 64
    :cond_8
    invoke-virtual {p0}, Landroid/net/NetworkStats;->size()I

    move-result v1

    .line 65
    .local v1, "networkStatsSize":I
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 66
    .local v2, "recycle":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_12
    if-ge v3, v1, :cond_2c

    .line 67
    invoke-virtual {p0, v3, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v4

    .line 68
    .local v4, "item":Landroid/net/NetworkStats$Entry;
    iget v5, v4, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v5, :cond_29

    .line 69
    new-instance v5, Lcom/android/server/net/NetworkStatsActualCollection$Key;

    invoke-direct {v5, v4}, Lcom/android/server/net/NetworkStatsActualCollection$Key;-><init>(Landroid/net/NetworkStats$Entry;)V

    new-instance v6, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;

    invoke-direct {v6, v4}, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;-><init>(Landroid/net/NetworkStats$Entry;)V

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .end local v4    # "item":Landroid/net/NetworkStats$Entry;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 72
    .end local v3    # "index":I
    :cond_2c
    return-object v0
.end method

.method private static getSortedKeys(Landroid/util/ArrayMap;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/net/NetworkStatsActualCollection$Key;",
            "Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/net/NetworkStatsActualCollection$Key;",
            ">;"
        }
    .end annotation

    .line 181
    .local p0, "stats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/net/NetworkStatsActualCollection$Key;Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 182
    .local v0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsActualCollection$Key;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 183
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 184
    return-object v0
.end method

.method private static getStatus(ZZ)I
    .registers 3
    .param p0, "screenOn"    # Z
    .param p1, "firstRecord"    # Z

    .line 117
    if-eqz p0, :cond_4

    const/4 v0, 0x2

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    or-int/2addr v0, p1

    .line 118
    .local v0, "state":I
    return v0
.end method

.method private static recordNetworkData(ZZLandroid/util/ArrayMap;)V
    .registers 13
    .param p0, "screenOn"    # Z
    .param p1, "firstRecord"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/net/NetworkStatsActualCollection$Key;",
            "Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p2, "subStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/net/NetworkStatsActualCollection$Key;Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 76
    .local v0, "strb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "currentTime":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/net/NetworkStatsActualCollection;->DEBUG:Z

    if-eqz v2, :cond_38

    const-string v2, "NetworkStatsActualCollection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", firstRecord = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_38
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkStatsActualCollection;->getStatus(ZZ)I

    move-result v2

    .line 79
    .local v2, "status":I
    packed-switch v2, :pswitch_data_168

    goto/16 :goto_bd

    .line 90
    :pswitch_41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[first record screen on ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    goto :goto_bd

    .line 87
    :pswitch_5b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[screen_off ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/net/NetworkStatsActualCollection;->mRecordTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    goto :goto_bd

    .line 84
    :pswitch_7f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[first record screen off ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    goto :goto_bd

    .line 81
    :pswitch_99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[screen_on ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/net/NetworkStatsActualCollection;->mRecordTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    nop

    .line 95
    :goto_bd
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    sput-object v1, Lcom/android/server/net/NetworkStatsActualCollection;->mRecordTime:Ljava/lang/String;

    .line 98
    invoke-static {p2}, Lcom/android/server/net/NetworkStatsActualCollection;->getSortedKeys(Landroid/util/ArrayMap;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_cc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsActualCollection$Key;

    .line 99
    .local v4, "key":Lcom/android/server/net/NetworkStatsActualCollection$Key;
    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;

    .line 100
    .local v5, "lastItem":Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;
    iget-wide v6, v5, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->rxBytes:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_f8

    iget-wide v6, v5, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->rxPackets:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_f8

    iget-wide v6, v5, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->txBytes:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_f8

    iget-wide v6, v5, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->txPackets:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_15b

    .line 101
    :cond_f8
    const-string v6, " uid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/net/NetworkStatsActualCollection$Key;->uid:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v6, " set="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/net/NetworkStatsActualCollection$Key;->set:I

    invoke-static {v6}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v6, " tag="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/net/NetworkStatsActualCollection$Key;->tag:I

    invoke-static {v6}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v6, " if="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/net/NetworkStatsActualCollection$Key;->iface:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v6, "  {["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v6, "subrb="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->rxBytes:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    const-string v6, " subrp="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->rxPackets:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    const-string v6, " subtb="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->txBytes:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    const-string v6, " subtp="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->txPackets:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    const-string v6, "]}\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .end local v4    # "key":Lcom/android/server/net/NetworkStatsActualCollection$Key;
    .end local v5    # "lastItem":Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;
    :cond_15b
    goto/16 :goto_cc

    .line 113
    :cond_15d
    sget-object v3, Lcom/android/server/net/NetworkStatsActualCollection;->mNetworkCollectionLog:Landroid/util/LocalLog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 114
    return-void

    nop

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_99
        :pswitch_7f
        :pswitch_5b
        :pswitch_41
    .end packed-switch
.end method

.method public static updateNetworkStats(Landroid/os/INetworkManagementService;Z)V
    .registers 6
    .param p0, "networkManager"    # Landroid/os/INetworkManagementService;
    .param p1, "screenOn"    # Z

    .line 30
    if-nez p0, :cond_3

    .line 31
    return-void

    .line 33
    :cond_3
    const/4 v0, 0x0

    .line 35
    .local v0, "newAllUidNetworkStats":Landroid/net/NetworkStats;
    :try_start_4
    invoke-interface {p0}, Landroid/os/INetworkManagementService;->getNetworkStatsDetail()Landroid/net/NetworkStats;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_a

    move-object v0, v1

    .line 38
    goto :goto_12

    .line 36
    :catch_a
    move-exception v1

    .line 37
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "NetworkStatsActualCollection"

    const-string v3, "get network state fail"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_12
    if-nez v0, :cond_15

    .line 41
    return-void

    .line 43
    :cond_15
    const/4 v1, 0x0

    .line 44
    .local v1, "subtractAllUidNetworkStats":Landroid/net/NetworkStats;
    const/4 v2, 0x1

    .line 45
    .local v2, "isFirstRecord":Z
    sget-object v3, Lcom/android/server/net/NetworkStatsActualCollection;->mAllUidNetworkStats:Landroid/net/NetworkStats;

    if-nez v3, :cond_1d

    .line 46
    move-object v1, v0

    goto :goto_24

    .line 48
    :cond_1d
    sget-object v3, Lcom/android/server/net/NetworkStatsActualCollection;->mAllUidNetworkStats:Landroid/net/NetworkStats;

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 49
    const/4 v2, 0x0

    .line 51
    :goto_24
    if-nez v1, :cond_27

    .line 52
    return-void

    .line 55
    :cond_27
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsActualCollection;->getNetworkStatsMap(Landroid/net/NetworkStats;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/android/server/net/NetworkStatsActualCollection;->recordNetworkData(ZZLandroid/util/ArrayMap;)V

    .line 56
    sput-object v0, Lcom/android/server/net/NetworkStatsActualCollection;->mAllUidNetworkStats:Landroid/net/NetworkStats;

    .line 57
    return-void
.end method
