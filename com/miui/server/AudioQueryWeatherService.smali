.class public Lcom/miui/server/AudioQueryWeatherService;
.super Ljava/lang/Object;
.source "AudioQueryWeatherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/AudioQueryWeatherService$QueryHandler;,
        Lcom/miui/server/AudioQueryWeatherService$LocationObserver;
    }
.end annotation


# static fields
.field private static final CITY_CONTENT_URI:Ljava/lang/String; = "content://weather/selected_city"

.field private static final CITY_PROJECTION:[Ljava/lang/String;

.field private static final CITY_QUERY_TOKEN:I = 0x3e9

.field private static final DEBUG:Z = true

.field private static final FLAG_LOCATION_TRUE:I = 0x1

.field private static final MAX_SUNRISE_TIME:I = 0xa

.field private static final MAX_SUNSET_TIME:I = 0x16

.field private static final MIN_SUNRISE_TIME:I = 0x3

.field private static final MIN_SUNSET_TIME:I = 0xf

.field private static final NO_FIND_OUT_RESULT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AudioQueryWeatherService"

.field private static final WEATHER_CONTENT_URI:Ljava/lang/String; = "content://weather/actualWeatherData"

.field private static final WEATHER_PROJECTION:[Ljava/lang/String;

.field private static final WEATHER_QUERY_TOKEN:I = 0x3e8


# instance fields
.field private mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mInternationalLocation:Z

.field private mLocationObserver:Lcom/miui/server/AudioQueryWeatherService$LocationObserver;

.field private mNextSunriseSunsetTime:Z

.field private mQueryHandler:Lcom/miui/server/AudioQueryWeatherService$QueryHandler;

.field private mSunriseTimeHours:I

.field private mSunriseTimeMins:I

.field private mSunsetTimeHours:I

.field private mSunsetTimeMins:I

.field private mUpdateTimeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 41
    const-string v0, "city_id"

    const-string/jumbo v1, "sunrise"

    const-string/jumbo v2, "sunset"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/server/AudioQueryWeatherService;->WEATHER_PROJECTION:[Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "posID"

    const-string/jumbo v1, "position"

    const-string v2, "flag"

    const-string v3, "belongings"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/server/AudioQueryWeatherService;->CITY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mNextSunriseSunsetTime:Z

    .line 83
    const-string v1, "AudioQueryWeatherService"

    const-string v2, "construct!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-object p1, p0, Lcom/miui/server/AudioQueryWeatherService;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mContentResolver:Landroid/content/ContentResolver;

    .line 87
    iget-object v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mQueryHandler:Lcom/miui/server/AudioQueryWeatherService$QueryHandler;

    if-nez v1, :cond_22

    .line 88
    new-instance v1, Lcom/miui/server/AudioQueryWeatherService$QueryHandler;

    iget-object v2, p0, Lcom/miui/server/AudioQueryWeatherService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/miui/server/AudioQueryWeatherService$QueryHandler;-><init>(Lcom/miui/server/AudioQueryWeatherService;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mQueryHandler:Lcom/miui/server/AudioQueryWeatherService$QueryHandler;

    .line 90
    :cond_22
    iput v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunriseTimeHours:I

    .line 91
    iput v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunsetTimeHours:I

    .line 92
    iput v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunriseTimeMins:I

    .line 93
    iput v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunsetTimeMins:I

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mInternationalLocation:Z

    .line 95
    return-void
.end method

.method private CalculateLocationAndQuery(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "flag"    # I
    .param p2, "cityId"    # Ljava/lang/String;
    .param p3, "belongings"    # Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110b0170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "LocationJudgment":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2d

    .line 179
    if-eqz p3, :cond_1d

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    .line 180
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mInternationalLocation:Z

    goto :goto_1f

    .line 182
    :cond_1d
    iput-boolean v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mInternationalLocation:Z

    .line 184
    :goto_1f
    iget-boolean v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mInternationalLocation:Z

    if-nez v1, :cond_2f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 185
    invoke-direct {p0, p2}, Lcom/miui/server/AudioQueryWeatherService;->startWeatherQuery(Ljava/lang/String;)V

    goto :goto_2f

    .line 188
    :cond_2d
    iput-boolean v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mInternationalLocation:Z

    .line 190
    :cond_2f
    :goto_2f
    return-void
.end method

.method private CalculateSunriseAndSunsetTime(JJ)V
    .registers 11
    .param p1, "sunriseTime"    # J
    .param p3, "sunsetTime"    # J

    .line 241
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 242
    .local v0, "SunCalendar":Landroid/icu/util/Calendar;
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_ab

    cmp-long v1, p3, v1

    if-eqz v1, :cond_ab

    .line 243
    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 244
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunriseTimeHours:I

    .line 245
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunriseTimeMins:I

    .line 247
    iget v3, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunriseTimeHours:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2b

    .line 248
    iput v4, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunriseTimeHours:I

    .line 249
    iput v5, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunriseTimeMins:I

    .line 251
    :cond_2b
    iget v3, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunriseTimeHours:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_35

    .line 252
    iput v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunriseTimeHours:I

    .line 253
    iput v5, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunriseTimeMins:I

    .line 255
    :cond_35
    invoke-virtual {v0, p3, p4}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 256
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunsetTimeHours:I

    .line 257
    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunsetTimeMins:I

    .line 259
    iget v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunsetTimeHours:I

    const/16 v2, 0xf

    if-ge v1, v2, :cond_4e

    .line 260
    iput v2, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunsetTimeHours:I

    .line 261
    iput v5, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunsetTimeMins:I

    .line 263
    :cond_4e
    iget v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunsetTimeHours:I

    const/16 v2, 0x16

    if-le v1, v2, :cond_5a

    .line 264
    const/16 v1, 0x17

    iput v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunsetTimeHours:I

    .line 265
    iput v5, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunsetTimeMins:I

    .line 267
    :cond_5a
    const-string v1, "AudioQueryWeatherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWeatherInfo sunriseHour="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunriseTimeHours:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sunriseMin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunriseTimeMins:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mNextSunriseSunsetTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/server/AudioQueryWeatherService;->mNextSunriseSunsetTime:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v1, "AudioQueryWeatherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWeatherInfo sunsetHour="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunsetTimeHours:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sunsetMin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunsetTimeMins:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    .line 271
    :cond_ab
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mInternationalLocation:Z

    .line 273
    :goto_ae
    return-void
.end method

.method static synthetic access$002(Lcom/miui/server/AudioQueryWeatherService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/AudioQueryWeatherService;
    .param p1, "x1"    # Z

    .line 30
    iput-boolean p1, p0, Lcom/miui/server/AudioQueryWeatherService;->mNextSunriseSunsetTime:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/server/AudioQueryWeatherService;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/AudioQueryWeatherService;

    .line 30
    invoke-direct {p0}, Lcom/miui/server/AudioQueryWeatherService;->startCityQuery()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/server/AudioQueryWeatherService;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/AudioQueryWeatherService;

    .line 30
    iget-object v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/server/AudioQueryWeatherService;Landroid/database/Cursor;)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/AudioQueryWeatherService;
    .param p1, "x1"    # Landroid/database/Cursor;

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/server/AudioQueryWeatherService;->updateCityInfo(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/server/AudioQueryWeatherService;Landroid/database/Cursor;)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/AudioQueryWeatherService;
    .param p1, "x1"    # Landroid/database/Cursor;

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/server/AudioQueryWeatherService;->updateWeatherInfo(Landroid/database/Cursor;)V

    return-void
.end method

.method private startCityQuery()V
    .registers 11

    .line 162
    const-class v0, Lcom/miui/server/AudioQueryWeatherService;

    monitor-enter v0

    .line 163
    :try_start_3
    iget-object v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mQueryHandler:Lcom/miui/server/AudioQueryWeatherService$QueryHandler;

    if-eqz v1, :cond_30

    .line 164
    iget-object v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mQueryHandler:Lcom/miui/server/AudioQueryWeatherService$QueryHandler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/miui/server/AudioQueryWeatherService$QueryHandler;->cancelOperation(I)V

    .line 165
    iget-object v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mQueryHandler:Lcom/miui/server/AudioQueryWeatherService$QueryHandler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/miui/server/AudioQueryWeatherService$QueryHandler;->cancelOperation(I)V

    .line 166
    const-string v1, "content://weather/selected_city"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 168
    .local v5, "contentUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/miui/server/AudioQueryWeatherService;->mQueryHandler:Lcom/miui/server/AudioQueryWeatherService$QueryHandler;

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    sget-object v6, Lcom/miui/server/AudioQueryWeatherService;->CITY_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/miui/server/AudioQueryWeatherService$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .end local v5    # "contentUri":Landroid/net/Uri;
    :cond_30
    monitor-exit v0

    .line 173
    return-void

    .line 172
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private startWeatherQuery(Ljava/lang/String;)V
    .registers 12
    .param p1, "cityId"    # Ljava/lang/String;

    .line 226
    const-string v0, "AudioQueryWeatherService"

    const-string/jumbo v1, "startWeatherQuery start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-class v0, Lcom/miui/server/AudioQueryWeatherService;

    monitor-enter v0

    .line 229
    :try_start_b
    iget-object v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mQueryHandler:Lcom/miui/server/AudioQueryWeatherService$QueryHandler;

    if-eqz v1, :cond_42

    .line 230
    iget-object v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mQueryHandler:Lcom/miui/server/AudioQueryWeatherService$QueryHandler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/miui/server/AudioQueryWeatherService$QueryHandler;->cancelOperation(I)V

    .line 231
    const-string v1, "content://weather/actualWeatherData"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 232
    .local v5, "contentUri":Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v8, v1

    .line 233
    .local v8, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/server/AudioQueryWeatherService;->mQueryHandler:Lcom/miui/server/AudioQueryWeatherService$QueryHandler;

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    sget-object v6, Lcom/miui/server/AudioQueryWeatherService;->WEATHER_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/miui/server/AudioQueryWeatherService$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .end local v5    # "contentUri":Landroid/net/Uri;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    :cond_42
    monitor-exit v0

    .line 238
    return-void

    .line 237
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_b .. :try_end_46} :catchall_44

    throw v1
.end method

.method private updateCityInfo(Landroid/database/Cursor;)V
    .registers 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "cityId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 195
    .local v1, "belongings":Ljava/lang/String;
    const/4 v2, -0x1

    .line 197
    .local v2, "flag":I
    if-eqz p1, :cond_6b

    .line 199
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 200
    const-string/jumbo v3, "posID"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 201
    const-string v3, "belongings"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 202
    const-string v3, "flag"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v2, v3

    .line 203
    const-string v3, "AudioQueryWeatherService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCityInfo flag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4a} :catch_55
    .catchall {:try_start_5 .. :try_end_4a} :catchall_53

    .line 209
    :cond_4a
    :try_start_4a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 212
    :goto_4d
    goto :goto_5d

    .line 210
    :catch_4e
    move-exception v3

    .line 211
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_5d

    .line 208
    :catchall_53
    move-exception v3

    goto :goto_61

    .line 205
    :catch_55
    move-exception v3

    .line 206
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_56
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_53

    .line 209
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_59
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_4e

    goto :goto_4d

    .line 221
    :goto_5d
    invoke-direct {p0, v2, v0, v1}, Lcom/miui/server/AudioQueryWeatherService;->CalculateLocationAndQuery(ILjava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void

    .line 208
    :goto_61
    nop

    .line 209
    :try_start_62
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66

    .line 212
    goto :goto_6a

    .line 210
    :catch_66
    move-exception v4

    .line 211
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_6a
    throw v3

    .line 216
    :cond_6b
    const-string v3, "AudioQueryWeatherService"

    const-string/jumbo v4, "location: weather maybe uninstalled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/server/AudioQueryWeatherService;->mInternationalLocation:Z

    .line 219
    return-void
.end method

.method private updateWeatherInfo(Landroid/database/Cursor;)V
    .registers 9
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 276
    const-string v0, "AudioQueryWeatherService"

    const-string/jumbo v1, "updateWeatherInfo start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v0, 0x1

    if-eqz p1, :cond_5f

    .line 279
    const-wide/16 v1, 0x0

    .line 280
    .local v1, "sunriseTime":J
    const-wide/16 v3, 0x0

    .line 281
    .local v3, "sunsetTime":J
    :try_start_f
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 282
    iget-boolean v5, p0, Lcom/miui/server/AudioQueryWeatherService;->mNextSunriseSunsetTime:Z

    if-ne v5, v0, :cond_22

    .line 283
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 285
    :cond_22
    const-string/jumbo v5, "sunrise"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-wide v1, v5

    .line 286
    const-string/jumbo v5, "sunset"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-wide v3, v5

    goto :goto_3d

    .line 288
    :cond_3b
    iput-boolean v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mInternationalLocation:Z

    .line 290
    :goto_3d
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/miui/server/AudioQueryWeatherService;->CalculateSunriseAndSunsetTime(JJ)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_40} :catch_46
    .catchall {:try_start_f .. :try_end_40} :catchall_44

    .line 296
    .end local v1    # "sunriseTime":J
    .end local v3    # "sunsetTime":J
    :try_start_40
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_50

    goto :goto_4f

    .line 295
    :catchall_44
    move-exception v0

    goto :goto_55

    .line 291
    :catch_46
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/Exception;
    :try_start_47
    iput-boolean v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mInternationalLocation:Z

    .line 293
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_44

    .line 296
    .end local v1    # "e":Ljava/lang/Exception;
    :try_start_4c
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50

    .line 299
    :goto_4f
    goto :goto_69

    .line 297
    :catch_50
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_69

    .line 295
    :goto_55
    nop

    .line 296
    :try_start_56
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_5a

    .line 299
    goto :goto_5e

    .line 297
    :catch_5a
    move-exception v1

    .line 298
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5e
    throw v0

    .line 302
    :cond_5f
    const-string v1, "AudioQueryWeatherService"

    const-string/jumbo v2, "weather maybe uninstalled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iput-boolean v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mInternationalLocation:Z

    .line 305
    :goto_69
    return-void
.end method


# virtual methods
.method public getDefaultTimeZoneStatus()Z
    .registers 2

    .line 308
    iget-boolean v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mInternationalLocation:Z

    return v0
.end method

.method public getSunriseTimeHours()I
    .registers 2

    .line 312
    iget v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunriseTimeHours:I

    return v0
.end method

.method public getSunriseTimeMins()I
    .registers 2

    .line 320
    iget v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunriseTimeMins:I

    return v0
.end method

.method public getSunsetTimeHours()I
    .registers 2

    .line 316
    iget v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunsetTimeHours:I

    return v0
.end method

.method public getSunsetTimeMins()I
    .registers 2

    .line 324
    iget v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mSunsetTimeMins:I

    return v0
.end method

.method public onCreate()V
    .registers 5

    .line 99
    const-string v0, "AudioQueryWeatherService"

    const-string/jumbo v1, "onCreate!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    const/16 v1, 0x3e8

    if-nez v0, :cond_26

    .line 103
    new-instance v0, Lcom/miui/server/AudioQueryWeatherService$1;

    invoke-direct {v0, p0}, Lcom/miui/server/AudioQueryWeatherService$1;-><init>(Lcom/miui/server/AudioQueryWeatherService;)V

    iput-object v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "intentFilterBootComplete":Landroid/content/IntentFilter;
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 116
    iget-object v2, p0, Lcom/miui/server/AudioQueryWeatherService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/server/AudioQueryWeatherService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    .end local v0    # "intentFilterBootComplete":Landroid/content/IntentFilter;
    :cond_26
    iget-object v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mUpdateTimeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_42

    .line 121
    new-instance v0, Lcom/miui/server/AudioQueryWeatherService$2;

    invoke-direct {v0, p0}, Lcom/miui/server/AudioQueryWeatherService$2;-><init>(Lcom/miui/server/AudioQueryWeatherService;)V

    iput-object v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mUpdateTimeReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.android.media.update.sunrise.sunset.time"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "intentFilterUpdateTime":Landroid/content/IntentFilter;
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 135
    iget-object v1, p0, Lcom/miui/server/AudioQueryWeatherService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/AudioQueryWeatherService;->mUpdateTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    .end local v0    # "intentFilterUpdateTime":Landroid/content/IntentFilter;
    :cond_42
    new-instance v0, Lcom/miui/server/AudioQueryWeatherService$LocationObserver;

    invoke-direct {v0, p0}, Lcom/miui/server/AudioQueryWeatherService$LocationObserver;-><init>(Lcom/miui/server/AudioQueryWeatherService;)V

    iput-object v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mLocationObserver:Lcom/miui/server/AudioQueryWeatherService$LocationObserver;

    .line 138
    iget-object v0, p0, Lcom/miui/server/AudioQueryWeatherService;->mLocationObserver:Lcom/miui/server/AudioQueryWeatherService$LocationObserver;

    invoke-virtual {v0}, Lcom/miui/server/AudioQueryWeatherService$LocationObserver;->onCreate()V

    .line 139
    return-void
.end method
