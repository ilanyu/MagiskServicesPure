.class public final Lcom/android/server/am/BroadcastStats;
.super Ljava/lang/Object;
.source "BroadcastStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastStats$ViolationEntry;,
        Lcom/android/server/am/BroadcastStats$PackageEntry;,
        Lcom/android/server/am/BroadcastStats$ActionEntry;
    }
.end annotation


# static fields
.field static final ACTIONS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/BroadcastStats$ActionEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mActions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/BroadcastStats$ActionEntry;",
            ">;"
        }
    .end annotation
.end field

.field mEndRealtime:J

.field mEndUptime:J

.field final mStartRealtime:J

.field final mStartUptime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/android/server/am/BroadcastStats$1;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastStats$1;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastStats;->ACTIONS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

    .line 72
    return-void
.end method


# virtual methods
.method public addBackgroundCheckViolation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "targetPackage"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastStats$ActionEntry;

    .line 97
    .local v0, "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    if-nez v0, :cond_15

    .line 98
    new-instance v1, Lcom/android/server/am/BroadcastStats$ActionEntry;

    invoke-direct {v1, p1}, Lcom/android/server/am/BroadcastStats$ActionEntry;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 99
    iget-object v1, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_15
    iget-object v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    .line 102
    .local v1, "ve":Lcom/android/server/am/BroadcastStats$ViolationEntry;
    if-nez v1, :cond_2a

    .line 103
    new-instance v2, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    invoke-direct {v2}, Lcom/android/server/am/BroadcastStats$ViolationEntry;-><init>()V

    move-object v1, v2

    .line 104
    iget-object v2, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_2a
    iget v2, v1, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    .line 107
    return-void
.end method

.method public addBroadcast(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "srcPackage"    # Ljava/lang/String;
    .param p3, "receiveCount"    # I
    .param p4, "skipCount"    # I
    .param p5, "dispatchTime"    # J

    .line 76
    iget-object v0, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastStats$ActionEntry;

    .line 77
    .local v0, "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    if-nez v0, :cond_15

    .line 78
    new-instance v1, Lcom/android/server/am/BroadcastStats$ActionEntry;

    invoke-direct {v1, p1}, Lcom/android/server/am/BroadcastStats$ActionEntry;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 79
    iget-object v1, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_15
    iget v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    add-int/2addr v1, p3

    iput v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    .line 82
    iget v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    add-int/2addr v1, p4

    iput v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    .line 83
    iget-wide v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    add-long/2addr v1, p5

    iput-wide v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    .line 84
    iget-wide v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    cmp-long v1, v1, p5

    if-gez v1, :cond_2c

    .line 85
    iput-wide p5, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    .line 87
    :cond_2c
    iget-object v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastStats$PackageEntry;

    .line 88
    .local v1, "pe":Lcom/android/server/am/BroadcastStats$PackageEntry;
    if-nez v1, :cond_41

    .line 89
    new-instance v2, Lcom/android/server/am/BroadcastStats$PackageEntry;

    invoke-direct {v2}, Lcom/android/server/am/BroadcastStats$PackageEntry;-><init>()V

    move-object v1, v2

    .line 90
    iget-object v2, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_41
    iget v2, v1, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    .line 93
    return-void
.end method

.method public dumpCheckinStats(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;

    .line 159
    const-string v0, "broadcast-stats,1,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    iget-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 161
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    iget-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mEndRealtime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_1e

    :cond_1c
    iget-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mEndRealtime:J

    :goto_1e
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 163
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    iget-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mEndUptime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_31

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_33

    :cond_31
    iget-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mEndUptime:J

    :goto_33
    iget-wide v2, p0, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 165
    iget-object v0, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 165
    .local v0, "i":I
    :goto_41
    if-ltz v0, :cond_fc

    .line 166
    iget-object v1, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastStats$ActionEntry;

    .line 167
    .local v1, "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    if-eqz p2, :cond_57

    iget-object v2, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 168
    goto/16 :goto_f8

    .line 170
    :cond_57
    const-string v2, "a,"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    iget v2, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 174
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    iget v2, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 176
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    iget-wide v2, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 178
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    iget-wide v2, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 180
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 181
    iget-object v2, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 181
    .local v2, "j":I
    :goto_9a
    if-ltz v2, :cond_c5

    .line 182
    const-string/jumbo v3, "p,"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    iget-object v3, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    iget-object v3, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastStats$PackageEntry;

    .line 185
    .local v3, "pe":Lcom/android/server/am/BroadcastStats$PackageEntry;
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    iget v4, v3, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 187
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 181
    .end local v3    # "pe":Lcom/android/server/am/BroadcastStats$PackageEntry;
    add-int/lit8 v2, v2, -0x1

    goto :goto_9a

    .line 189
    .end local v2    # "j":I
    :cond_c5
    iget-object v2, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 189
    .restart local v2    # "j":I
    :goto_cd
    if-ltz v2, :cond_f8

    .line 190
    const-string/jumbo v3, "v,"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    iget-object v3, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 192
    iget-object v3, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    .line 193
    .local v3, "ve":Lcom/android/server/am/BroadcastStats$ViolationEntry;
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    iget v4, v3, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 195
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 189
    .end local v3    # "ve":Lcom/android/server/am/BroadcastStats$ViolationEntry;
    add-int/lit8 v2, v2, -0x1

    goto :goto_cd

    .line 165
    .end local v1    # "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    .end local v2    # "j":I
    :cond_f8
    :goto_f8
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_41

    .line 198
    .end local v0    # "i":I
    :cond_fc
    return-void
.end method

.method public dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "printedSomething":Z
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .local v1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastStats$ActionEntry;>;"
    iget-object v2, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_14
    if-ltz v2, :cond_24

    .line 113
    iget-object v3, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastStats$ActionEntry;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 115
    .end local v2    # "i":I
    :cond_24
    sget-object v2, Lcom/android/server/am/BroadcastStats;->ACTIONS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_2f
    if-ltz v2, :cond_f4

    .line 117
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastStats$ActionEntry;

    .line 118
    .local v3, "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    if-eqz p3, :cond_43

    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 119
    goto/16 :goto_f0

    .line 121
    :cond_43
    const/4 v0, 0x1

    .line 122
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    const-string v4, "  Number received: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    iget v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 128
    const-string v4, ", skipped: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    iget v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 130
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    const-string v4, "  Total dispatch time: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    iget-wide v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 133
    const-string v4, ", max: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    iget-wide v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 135
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 136
    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_8a
    if-ltz v4, :cond_b9

    .line 137
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    const-string v5, "  Package "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    iget-object v5, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    iget-object v5, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastStats$PackageEntry;

    .line 142
    .local v5, "pe":Lcom/android/server/am/BroadcastStats$PackageEntry;
    iget v6, v5, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 143
    const-string v6, " times"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .end local v5    # "pe":Lcom/android/server/am/BroadcastStats$PackageEntry;
    add-int/lit8 v4, v4, -0x1

    goto :goto_8a

    .line 145
    .end local v4    # "j":I
    :cond_b9
    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "j":I
    :goto_c1
    if-ltz v4, :cond_f0

    .line 146
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    const-string v5, "  Bg Check Violation "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    iget-object v5, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    iget-object v5, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    .line 151
    .local v5, "ve":Lcom/android/server/am/BroadcastStats$ViolationEntry;
    iget v6, v5, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 152
    const-string v6, " times"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    .end local v5    # "ve":Lcom/android/server/am/BroadcastStats$ViolationEntry;
    add-int/lit8 v4, v4, -0x1

    goto :goto_c1

    .line 116
    .end local v3    # "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    .end local v4    # "j":I
    :cond_f0
    :goto_f0
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2f

    .line 155
    .end local v2    # "i":I
    :cond_f4
    return v0
.end method
