.class final Lcom/android/server/power/PowerManagerService$WakeLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WakeLock"
.end annotation


# instance fields
.field public mAcquireTime:J

.field public mDisabled:Z

.field public mFlags:I

.field public mHistoryTag:Ljava/lang/String;

.field public final mLock:Landroid/os/IBinder;

.field public mNotifiedAcquired:Z

.field public mNotifiedLong:Z

.field public final mOwnerPid:I

.field public final mOwnerUid:I

.field public final mPackageName:Ljava/lang/String;

.field public mTag:Ljava/lang/String;

.field public final mUidState:Lcom/android/server/power/PowerManagerService$UidState;

.field public mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILcom/android/server/power/PowerManagerService$UidState;)V
    .registers 12
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "lock"    # Landroid/os/IBinder;
    .param p3, "flags"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;
    .param p8, "ownerUid"    # I
    .param p9, "ownerPid"    # I
    .param p10, "uidState"    # Lcom/android/server/power/PowerManagerService$UidState;

    .line 4038
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4039
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    .line 4040
    iput p3, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 4041
    iput-object p4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    .line 4042
    iput-object p5, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 4043
    # invokes: Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    invoke-static {p6}, Lcom/android/server/power/PowerManagerService;->access$2900(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 4044
    iput-object p7, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 4045
    iput p8, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 4046
    iput p9, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    .line 4047
    iput-object p10, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 4048
    return-void
.end method

.method private getLockFlagsString()Ljava/lang/String;
    .registers 4

    .line 4173
    const-string v0, ""

    .line 4174
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1a

    .line 4175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ACQUIRE_CAUSES_WAKEUP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4177
    :cond_1a
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_32

    .line 4178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ON_AFTER_RELEASE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4180
    :cond_32
    return-object v0
.end method

.method private getLockLevelString()Ljava/lang/String;
    .registers 3

    .line 4152
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    const/4 v1, 0x6

    if-eq v0, v1, :cond_32

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x20

    if-eq v0, v1, :cond_29

    const/16 v1, 0x40

    if-eq v0, v1, :cond_26

    const/16 v1, 0x80

    if-eq v0, v1, :cond_23

    .line 4168
    const-string v0, "???                           "

    return-object v0

    .line 4166
    :cond_23
    const-string v0, "DRAW_WAKE_LOCK                "

    return-object v0

    .line 4164
    :cond_26
    const-string v0, "DOZE_WAKE_LOCK                "

    return-object v0

    .line 4162
    :cond_29
    const-string v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    return-object v0

    .line 4154
    :cond_2c
    const-string v0, "FULL_WAKE_LOCK                "

    return-object v0

    .line 4156
    :cond_2f
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK       "

    return-object v0

    .line 4158
    :cond_32
    const-string v0, "SCREEN_DIM_WAKE_LOCK          "

    return-object v0

    .line 4160
    :cond_35
    const-string v0, "PARTIAL_WAKE_LOCK             "

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 4052
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    invoke-static {v0, p0}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 4053
    return-void
.end method

.method public hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z
    .registers 7
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I

    .line 4057
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    if-ne v0, p1, :cond_1c

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    .line 4058
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4059
    invoke-virtual {p0, p3}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-ne v0, p4, :cond_1c

    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    if-ne v0, p5, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 4057
    :goto_1d
    return v0
.end method

.method public hasSameWorkSource(Landroid/os/WorkSource;)Z
    .registers 3
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 4085
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 4094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4095
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakeLock;->getLockLevelString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4096
    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4097
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4098
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4099
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakeLock;->getLockFlagsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4100
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v1, :cond_2b

    .line 4101
    const-string v1, " DISABLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4103
    :cond_2b
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v1, :cond_3e

    .line 4104
    const-string v1, " ACQ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4105
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 4107
    :cond_3e
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-eqz v1, :cond_47

    .line 4108
    const-string v1, " LONG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4110
    :cond_47
    const-string v1, " (uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4111
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4112
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    if-eqz v1, :cond_5f

    .line 4113
    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4114
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4116
    :cond_5f
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_6d

    .line 4117
    const-string v1, " ws="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4118
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4120
    :cond_6d
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .registers 11
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "workSource"    # Landroid/os/WorkSource;
    .param p5, "historyTag"    # Ljava/lang/String;
    .param p6, "ownerUid"    # I
    .param p7, "ownerPid"    # I

    .line 4066
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 4070
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-ne v0, p6, :cond_3b

    .line 4074
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    if-ne v0, p7, :cond_1a

    .line 4078
    iput p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 4079
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    .line 4080
    invoke-virtual {p0, p4}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    .line 4081
    iput-object p5, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 4082
    return-void

    .line 4075
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing wake lock pid changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4071
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing wake lock uid changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4067
    :cond_5c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing wake lock package name changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateWorkSource(Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 4089
    # invokes: Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$2900(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 4090
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 14
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 4125
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4126
    .local v0, "wakeLockToken":J
    iget v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v3, 0xffff

    and-int/2addr v2, v3

    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4127
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4129
    const-wide v2, 0x10b00000003L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 4130
    .local v2, "wakeLockFlagsToken":J
    iget v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_30

    move v4, v6

    goto :goto_31

    :cond_30
    move v4, v5

    :goto_31
    const-wide v7, 0x10800000001L

    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4132
    const-wide v7, 0x10800000002L

    iget v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v9, 0x20000000

    and-int/2addr v4, v9

    if-eqz v4, :cond_47

    move v5, v6

    nop

    :cond_47
    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4134
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4136
    const-wide v4, 0x10800000004L

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4137
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v4, :cond_65

    .line 4138
    const-wide v4, 0x10300000005L

    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4140
    :cond_65
    const-wide v4, 0x10800000006L

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4141
    const-wide v4, 0x10500000007L

    iget v6, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4142
    const-wide v4, 0x10500000008L

    iget v6, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4144
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v4, :cond_91

    .line 4145
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const-wide v5, 0x10b00000009L

    invoke-virtual {v4, p1, v5, v6}, Landroid/os/WorkSource;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4147
    :cond_91
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4148
    return-void
.end method
