.class public Lcom/android/server/trust/TrustArchive;
.super Ljava/lang/Object;
.source "TrustArchive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/trust/TrustArchive$Event;
    }
.end annotation


# static fields
.field private static final HISTORY_LIMIT:I = 0xc8

.field private static final TYPE_AGENT_CONNECTED:I = 0x4

.field private static final TYPE_AGENT_DIED:I = 0x3

.field private static final TYPE_AGENT_STOPPED:I = 0x5

.field private static final TYPE_GRANT_TRUST:I = 0x0

.field private static final TYPE_MANAGING_TRUST:I = 0x6

.field private static final TYPE_POLICY_CHANGED:I = 0x7

.field private static final TYPE_REVOKE_TRUST:I = 0x1

.field private static final TYPE_TRUST_TIMEOUT:I = 0x2


# instance fields
.field mEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/trust/TrustArchive$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    return-void
.end method

.method private addEvent(Lcom/android/server/trust/TrustArchive$Event;)V
    .registers 4
    .param p1, "e"    # Lcom/android/server/trust/TrustArchive$Event;

    .line 108
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_f

    .line 109
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 111
    :cond_f
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method private dumpGrantFlags(I)Ljava/lang/String;
    .registers 5
    .param p1, "flags"    # I

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p1, 0x1

    const/16 v2, 0x7c

    if-eqz v1, :cond_19

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    :cond_14
    const-string v1, "INITIATED_BY_USER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_19
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2b

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    :cond_26
    const-string v1, "DISMISS_KEYGUARD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_36

    .line 210
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dumpType(I)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # I

    .line 177
    packed-switch p1, :pswitch_data_32

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    :pswitch_1a
    const-string v0, "DevicePolicyChanged"

    return-object v0

    .line 191
    :pswitch_1d
    const-string v0, "ManagingTrust"

    return-object v0

    .line 189
    :pswitch_20
    const-string v0, "AgentStopped"

    return-object v0

    .line 187
    :pswitch_23
    const-string v0, "AgentConnected"

    return-object v0

    .line 185
    :pswitch_26
    const-string v0, "AgentDied"

    return-object v0

    .line 183
    :pswitch_29
    const-string v0, "TrustTimeout"

    return-object v0

    .line 181
    :pswitch_2c
    const-string v0, "RevokeTrust"

    return-object v0

    .line 179
    :pswitch_2f
    const-string v0, "GrantTrust"

    return-object v0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .registers 4
    .param p0, "duration"    # J

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatElapsed(J)Ljava/lang/String;
    .registers 7
    .param p0, "elapsed"    # J

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p0, v0

    .line 162
    .local v0, "delta":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 163
    .local v2, "wallTime":J
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4
    .param p0, "cn"    # Landroid/content/ComponentName;

    .line 167
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 169
    .local v1, "idx":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    if-ltz v1, :cond_19

    .line 170
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 172
    :cond_19
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;IILjava/lang/String;Z)V
    .registers 22
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "limit"    # I
    .param p3, "userId"    # I
    .param p4, "linePrefix"    # Ljava/lang/String;
    .param p5, "duplicateSimpleNames"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 116
    const/4 v3, 0x0

    .line 117
    .local v3, "count":I
    iget-object v4, v0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 118
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/trust/TrustArchive$Event;>;"
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c3

    move/from16 v5, p2

    if-ge v3, v5, :cond_c5

    .line 119
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/trust/TrustArchive$Event;

    .line 120
    .local v6, "ev":Lcom/android/server/trust/TrustArchive$Event;
    const/4 v7, -0x1

    if-eq v2, v7, :cond_29

    iget v8, v6, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    if-eq v2, v8, :cond_29

    iget v8, v6, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    if-eq v8, v7, :cond_29

    .line 122
    goto :goto_d

    .line 125
    :cond_29
    move-object/from16 v8, p4

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    const-string v9, "#%-2d %s %s: "

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    iget-wide v14, v6, Lcom/android/server/trust/TrustArchive$Event;->elapsedTimestamp:J

    invoke-static {v14, v15}, Lcom/android/server/trust/TrustArchive;->formatElapsed(J)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    aput-object v12, v11, v14

    iget v12, v6, Lcom/android/server/trust/TrustArchive$Event;->type:I

    .line 127
    invoke-direct {v0, v12}, Lcom/android/server/trust/TrustArchive;->dumpType(I)Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x2

    aput-object v12, v11, v15

    .line 126
    invoke-virtual {v1, v9, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 128
    if-ne v2, v7, :cond_61

    .line 129
    const-string/jumbo v7, "user="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    :cond_61
    iget-object v7, v6, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    if-eqz v7, :cond_7f

    .line 132
    const-string v7, "agent="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    if-eqz p5, :cond_76

    .line 134
    iget-object v9, v6, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7f

    .line 136
    :cond_76
    iget-object v9, v6, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    invoke-static {v9}, Lcom/android/server/trust/TrustArchive;->getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    :cond_7f
    :goto_7f
    iget v9, v6, Lcom/android/server/trust/TrustArchive$Event;->type:I

    if-eqz v9, :cond_a0

    const/4 v10, 0x6

    if-eq v9, v10, :cond_87

    goto :goto_bc

    .line 145
    :cond_87
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", managingTrust="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v6, Lcom/android/server/trust/TrustArchive$Event;->managingTrust:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {v1, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 146
    goto :goto_bc

    .line 141
    :cond_a0
    const-string v9, ", message=\"%s\", duration=%s, flags=%s"

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v6, Lcom/android/server/trust/TrustArchive$Event;->message:Ljava/lang/String;

    aput-object v11, v10, v13

    iget-wide v11, v6, Lcom/android/server/trust/TrustArchive$Event;->duration:J

    .line 142
    invoke-static {v11, v12}, Lcom/android/server/trust/TrustArchive;->formatDuration(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v14

    iget v11, v6, Lcom/android/server/trust/TrustArchive$Event;->flags:I

    invoke-direct {v0, v11}, Lcom/android/server/trust/TrustArchive;->dumpGrantFlags(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v15

    .line 141
    invoke-virtual {v1, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 143
    nop

    .line 149
    :goto_bc
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 150
    add-int/lit8 v3, v3, 0x1

    .line 151
    .end local v6    # "ev":Lcom/android/server/trust/TrustArchive$Event;
    goto/16 :goto_d

    .line 152
    :cond_c3
    move/from16 v5, p2

    :cond_c5
    move-object/from16 v8, p4

    return-void
.end method

.method public logAgentConnected(ILandroid/content/ComponentName;)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .line 92
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x4

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 93
    return-void
.end method

.method public logAgentDied(ILandroid/content/ComponentName;)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .line 88
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 89
    return-void
.end method

.method public logAgentStopped(ILandroid/content/ComponentName;)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .line 96
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x5

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 97
    return-void
.end method

.method public logDevicePolicyChanged()V
    .registers 12

    .line 104
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x7

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 105
    return-void
.end method

.method public logGrantTrust(ILandroid/content/ComponentName;Ljava/lang/String;JI)V
    .registers 18
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "duration"    # J
    .param p6, "flags"    # I

    .line 75
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    move-object v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 77
    return-void
.end method

.method public logManagingTrust(ILandroid/content/ComponentName;Z)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "managing"    # Z

    .line 100
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x6

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    move v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 101
    return-void
.end method

.method public logRevokeTrust(ILandroid/content/ComponentName;)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .line 80
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 81
    return-void
.end method

.method public logTrustTimeout(ILandroid/content/ComponentName;)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .line 84
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 85
    return-void
.end method
