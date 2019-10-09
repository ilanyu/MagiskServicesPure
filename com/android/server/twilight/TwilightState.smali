.class public final Lcom/android/server/twilight/TwilightState;
.super Ljava/lang/Object;
.source "TwilightState.java"


# instance fields
.field private final mSunriseTimeMillis:J

.field private final mSunsetTimeMillis:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5
    .param p1, "sunriseTimeMillis"    # J
    .param p3, "sunsetTimeMillis"    # J

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    .line 39
    iput-wide p3, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/twilight/TwilightState;)Z
    .registers 6
    .param p1, "other"    # Lcom/android/server/twilight/TwilightState;

    .line 88
    if-eqz p1, :cond_14

    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    iget-wide v2, p1, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    iget-wide v2, p1, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 84
    instance-of v0, p1, Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lcom/android/server/twilight/TwilightState;

    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightState;->equals(Lcom/android/server/twilight/TwilightState;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 95
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    iget-wide v1, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isNight()Z
    .registers 5

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 79
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_12

    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2
.end method

.method public sunrise()Ljava/time/LocalDateTime;
    .registers 4

    .line 54
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v0

    .line 55
    .local v0, "zoneId":Ljava/time/ZoneId;
    iget-wide v1, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public sunriseTimeMillis()J
    .registers 3

    .line 47
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    return-wide v0
.end method

.method public sunset()Ljava/time/LocalDateTime;
    .registers 4

    .line 70
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v0

    .line 71
    .local v0, "zoneId":Ljava/time/ZoneId;
    iget-wide v1, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public sunsetTimeMillis()J
    .registers 3

    .line 63
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwilightState { sunrise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MM-dd HH:mm"

    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    .line 101
    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " sunset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MM-dd HH:mm"

    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    .line 102
    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    return-object v0
.end method
