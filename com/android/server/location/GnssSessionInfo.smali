.class public Lcom/android/server/location/GnssSessionInfo;
.super Ljava/lang/Object;
.source "GnssSessionInfo.java"


# static fields
.field public static final STATE_FIX:I = 0x2

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_LOSE:I = 0x4

.field public static final STATE_SAVE:I = 0x5

.field public static final STATE_START:I = 0x1

.field public static final STATE_STOP:I = 0x3

.field public static final STATE_UNKNOWN:I = 0x64


# instance fields
.field private mCurrentState:I

.field private mEndTime:J

.field private mLostTimes:I

.field private mPackName:Ljava/lang/String;

.field private mStartTime:J

.field private mTTFF:J


# direct methods
.method public constructor <init>()V
    .registers 8

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GnssSessionInfo;->mPackName:Ljava/lang/String;

    .line 8
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/GnssSessionInfo;->mStartTime:J

    .line 9
    iput-wide v1, p0, Lcom/android/server/location/GnssSessionInfo;->mEndTime:J

    .line 10
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/location/GnssSessionInfo;->mTTFF:J

    .line 11
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/location/GnssSessionInfo;->mLostTimes:I

    .line 19
    const/16 v6, 0x64

    iput v6, p0, Lcom/android/server/location/GnssSessionInfo;->mCurrentState:I

    .line 22
    iput v6, p0, Lcom/android/server/location/GnssSessionInfo;->mCurrentState:I

    .line 23
    iput-object v0, p0, Lcom/android/server/location/GnssSessionInfo;->mPackName:Ljava/lang/String;

    .line 24
    iput-wide v1, p0, Lcom/android/server/location/GnssSessionInfo;->mStartTime:J

    .line 25
    iput-wide v1, p0, Lcom/android/server/location/GnssSessionInfo;->mEndTime:J

    .line 26
    iput-wide v3, p0, Lcom/android/server/location/GnssSessionInfo;->mTTFF:J

    .line 27
    iput v5, p0, Lcom/android/server/location/GnssSessionInfo;->mLostTimes:I

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJII)V
    .registers 12
    .param p1, "pack"    # Ljava/lang/String;
    .param p2, "starttime"    # J
    .param p4, "endtime"    # J
    .param p6, "ttff"    # J
    .param p8, "lost"    # I
    .param p9, "state"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GnssSessionInfo;->mPackName:Ljava/lang/String;

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GnssSessionInfo;->mStartTime:J

    .line 9
    iput-wide v0, p0, Lcom/android/server/location/GnssSessionInfo;->mEndTime:J

    .line 10
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/location/GnssSessionInfo;->mTTFF:J

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssSessionInfo;->mLostTimes:I

    .line 19
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/location/GnssSessionInfo;->mCurrentState:I

    .line 31
    iput-object p1, p0, Lcom/android/server/location/GnssSessionInfo;->mPackName:Ljava/lang/String;

    .line 32
    iput-wide p2, p0, Lcom/android/server/location/GnssSessionInfo;->mStartTime:J

    .line 33
    iput-wide p4, p0, Lcom/android/server/location/GnssSessionInfo;->mEndTime:J

    .line 34
    iput-wide p6, p0, Lcom/android/server/location/GnssSessionInfo;->mTTFF:J

    .line 35
    iput p8, p0, Lcom/android/server/location/GnssSessionInfo;->mLostTimes:I

    .line 36
    iput p9, p0, Lcom/android/server/location/GnssSessionInfo;->mCurrentState:I

    .line 37
    return-void
.end method

.method private getCurrentTime()J
    .registers 3

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public checkValidity()Z
    .registers 8

    .line 87
    iget v0, p0, Lcom/android/server/location/GnssSessionInfo;->mCurrentState:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_f

    iget-wide v5, p0, Lcom/android/server/location/GnssSessionInfo;->mStartTime:J

    cmp-long v0, v5, v1

    if-nez v0, :cond_f

    return v4

    .line 88
    :cond_f
    iget v0, p0, Lcom/android/server/location/GnssSessionInfo;->mCurrentState:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_1b

    iget-wide v5, p0, Lcom/android/server/location/GnssSessionInfo;->mEndTime:J

    cmp-long v0, v5, v1

    if-nez v0, :cond_1b

    return v4

    .line 89
    :cond_1b
    iget v0, p0, Lcom/android/server/location/GnssSessionInfo;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget v0, p0, Lcom/android/server/location/GnssSessionInfo;->mLostTimes:I

    if-nez v0, :cond_25

    return v4

    .line 90
    :cond_25
    iget v0, p0, Lcom/android/server/location/GnssSessionInfo;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    iget-wide v0, p0, Lcom/android/server/location/GnssSessionInfo;->mTTFF:J

    const-wide/16 v5, -0x1

    cmp-long v0, v0, v5

    if-nez v0, :cond_33

    return v4

    .line 91
    :cond_33
    iget v0, p0, Lcom/android/server/location/GnssSessionInfo;->mCurrentState:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_3f

    iget v0, p0, Lcom/android/server/location/GnssSessionInfo;->mCurrentState:I

    if-nez v0, :cond_3e

    goto :goto_3f

    .line 92
    :cond_3e
    return v3

    .line 91
    :cond_3f
    :goto_3f
    return v4
.end method

.method public getLoseTimes()I
    .registers 2

    .line 120
    iget v0, p0, Lcom/android/server/location/GnssSessionInfo;->mLostTimes:I

    return v0
.end method

.method public getPackName()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/server/location/GnssSessionInfo;->mPackName:Ljava/lang/String;

    return-object v0
.end method

.method public getRunTime()J
    .registers 5

    .line 114
    iget-wide v0, p0, Lcom/android/server/location/GnssSessionInfo;->mEndTime:J

    iget-wide v2, p0, Lcom/android/server/location/GnssSessionInfo;->mStartTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    .line 115
    iget-wide v0, p0, Lcom/android/server/location/GnssSessionInfo;->mEndTime:J

    iget-wide v2, p0, Lcom/android/server/location/GnssSessionInfo;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0

    .line 116
    :cond_11
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getStartTimeInHour()I
    .registers 4

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 109
    .local v0, "c":Ljava/util/Calendar;
    iget-wide v1, p0, Lcom/android/server/location/GnssSessionInfo;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 110
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public getTtff()J
    .registers 3

    .line 100
    iget-wide v0, p0, Lcom/android/server/location/GnssSessionInfo;->mTTFF:J

    return-wide v0
.end method

.method public newSessionReset()V
    .registers 3

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GnssSessionInfo;->mPackName:Ljava/lang/String;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GnssSessionInfo;->mStartTime:J

    .line 80
    iput-wide v0, p0, Lcom/android/server/location/GnssSessionInfo;->mEndTime:J

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/location/GnssSessionInfo;->mTTFF:J

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssSessionInfo;->mLostTimes:I

    .line 83
    iput v0, p0, Lcom/android/server/location/GnssSessionInfo;->mCurrentState:I

    .line 84
    return-void
.end method

.method public setEnd()V
    .registers 3

    .line 50
    invoke-direct {p0}, Lcom/android/server/location/GnssSessionInfo;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssSessionInfo;->mEndTime:J

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GnssSessionInfo;->mCurrentState:I

    .line 52
    return-void
.end method

.method public setLostTimes()V
    .registers 2

    .line 60
    iget v0, p0, Lcom/android/server/location/GnssSessionInfo;->mLostTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/GnssSessionInfo;->mLostTimes:I

    .line 61
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/location/GnssSessionInfo;->mCurrentState:I

    .line 62
    return-void
.end method

.method public setLostTimes(I)V
    .registers 2
    .param p1, "lostTimes"    # I

    .line 65
    iput p1, p0, Lcom/android/server/location/GnssSessionInfo;->mLostTimes:I

    .line 66
    return-void
.end method

.method public setStart()V
    .registers 3

    .line 45
    invoke-direct {p0}, Lcom/android/server/location/GnssSessionInfo;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssSessionInfo;->mStartTime:J

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/GnssSessionInfo;->mCurrentState:I

    .line 47
    return-void
.end method

.method public setStart(Ljava/lang/String;)V
    .registers 4
    .param p1, "pack"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/android/server/location/GnssSessionInfo;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssSessionInfo;->mStartTime:J

    .line 40
    iput-object p1, p0, Lcom/android/server/location/GnssSessionInfo;->mPackName:Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/GnssSessionInfo;->mCurrentState:I

    .line 42
    return-void
.end method

.method public setTtffAuto()V
    .registers 7

    .line 69
    invoke-direct {p0}, Lcom/android/server/location/GnssSessionInfo;->getCurrentTime()J

    move-result-wide v0

    .line 70
    .local v0, "cur":J
    iget-wide v2, p0, Lcom/android/server/location/GnssSessionInfo;->mStartTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_14

    .line 71
    iget-wide v2, p0, Lcom/android/server/location/GnssSessionInfo;->mStartTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/GnssSessionInfo;->mTTFF:J

    goto :goto_18

    .line 73
    :cond_14
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/location/GnssSessionInfo;->mTTFF:J

    .line 74
    :goto_18
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/location/GnssSessionInfo;->mCurrentState:I

    .line 75
    return-void
.end method

.method public setTtffManually(J)V
    .registers 4
    .param p1, "ttff"    # J

    .line 55
    iput-wide p1, p0, Lcom/android/server/location/GnssSessionInfo;->mTTFF:J

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GnssSessionInfo;->mCurrentState:I

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/GnssSessionInfo;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " start time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/GnssSessionInfo;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ttff = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/GnssSessionInfo;->mTTFF:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " end time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/GnssSessionInfo;->mEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " lose times = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/GnssSessionInfo;->mLostTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
