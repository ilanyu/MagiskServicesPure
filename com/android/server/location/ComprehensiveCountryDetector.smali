.class public Lcom/android/server/location/ComprehensiveCountryDetector;
.super Lcom/android/server/location/CountryDetectorBase;
.source "ComprehensiveCountryDetector.java"


# static fields
.field static final DEBUG:Z = false

.field private static final LOCATION_REFRESH_INTERVAL:J = 0x5265c00L

.field private static final MAX_LENGTH_DEBUG_LOGS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CountryDetector"


# instance fields
.field private mCountServiceStateChanges:I

.field private mCountry:Landroid/location/Country;

.field private mCountryFromLocation:Landroid/location/Country;

.field private final mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/location/Country;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCountryAddedToLogs:Landroid/location/Country;

.field private mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

.field protected mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

.field protected mLocationRefreshTimer:Ljava/util/Timer;

.field private final mObject:Ljava/lang/Object;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mStartTime:J

.field private mStopTime:J

.field private mStopped:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTotalCountServiceStateChanges:I

.field private mTotalTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/location/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopped:Z

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mObject:Ljava/lang/Object;

    .line 132
    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/ComprehensiveCountryDetector$1;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

    .line 145
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 146
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/location/Country;)Landroid/location/Country;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/ComprehensiveCountryDetector;
    .param p1, "x1"    # Landroid/location/Country;

    .line 58
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/location/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/location/ComprehensiveCountryDetector;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/ComprehensiveCountryDetector;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/ComprehensiveCountryDetector;

    .line 58
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    return-void
.end method

.method static synthetic access$308(Lcom/android/server/location/ComprehensiveCountryDetector;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/ComprehensiveCountryDetector;

    .line 58
    iget v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/server/location/ComprehensiveCountryDetector;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/ComprehensiveCountryDetector;

    .line 58
    iget v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/location/ComprehensiveCountryDetector;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/ComprehensiveCountryDetector;

    .line 58
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isNetworkCountryCodeAvailable()Z

    move-result v0

    return v0
.end method

.method private addToLogs(Landroid/location/Country;)V
    .registers 4
    .param p1, "country"    # Landroid/location/Country;

    .line 188
    if-nez p1, :cond_3

    .line 189
    return-void

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_6
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    invoke-virtual {v1, p1}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 196
    monitor-exit v0

    return-void

    .line 198
    :cond_14
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    .line 199
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_2c

    .line 201
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_26

    .line 202
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 207
    :cond_26
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 208
    return-void

    .line 199
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private declared-synchronized cancelLocationRefresh()V
    .registers 2

    monitor-enter p0

    .line 429
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    if-eqz v0, :cond_d

    .line 430
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 433
    :cond_d
    monitor-exit p0

    return-void

    .line 428
    :catchall_f
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/ComprehensiveCountryDetector;
    throw v0
.end method

.method private detectCountry(ZZ)Landroid/location/Country;
    .registers 6
    .param p1, "notifyChange"    # Z
    .param p2, "startLocationBasedDetection"    # Z

    .line 271
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getCountry()Landroid/location/Country;

    move-result-object v0

    .line 272
    .local v0, "country":Landroid/location/Country;
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    if-eqz v1, :cond_10

    new-instance v1, Landroid/location/Country;

    iget-object v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    invoke-direct {v1, v2}, Landroid/location/Country;-><init>(Landroid/location/Country;)V

    goto :goto_12

    :cond_10
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    :goto_12
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->runAfterDetectionAsync(Landroid/location/Country;Landroid/location/Country;ZZ)V

    .line 274
    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    .line 275
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    return-object v1
.end method

.method private getCountry()Landroid/location/Country;
    .registers 2

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "result":Landroid/location/Country;
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getNetworkBasedCountry()Landroid/location/Country;

    move-result-object v0

    .line 171
    if-nez v0, :cond_b

    .line 172
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getLastKnownLocationBasedCountry()Landroid/location/Country;

    move-result-object v0

    .line 174
    :cond_b
    if-nez v0, :cond_11

    .line 175
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getSimBasedCountry()Landroid/location/Country;

    move-result-object v0

    .line 177
    :cond_11
    if-nez v0, :cond_17

    .line 178
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getLocaleCountry()Landroid/location/Country;

    move-result-object v0

    .line 180
    :cond_17
    invoke-direct {p0, v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->addToLogs(Landroid/location/Country;)V

    .line 181
    return-object v0
.end method

.method private isNetworkCountryCodeAvailable()Z
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 215
    .local v0, "phoneType":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private notifyIfCountryChanged(Landroid/location/Country;Landroid/location/Country;)V
    .registers 4
    .param p1, "country"    # Landroid/location/Country;
    .param p2, "detectedCountry"    # Landroid/location/Country;

    .line 394
    if-eqz p2, :cond_11

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_e

    .line 395
    invoke-virtual {p1, p2}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 399
    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->notifyListener(Landroid/location/Country;)V

    .line 401
    :cond_11
    return-void
.end method

.method private declared-synchronized scheduleLocationRefresh()V
    .registers 5

    monitor-enter p0

    .line 407
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 412
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    .line 413
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/location/ComprehensiveCountryDetector$3;

    invoke-direct {v1, p0}, Lcom/android/server/location/ComprehensiveCountryDetector$3;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1d

    .line 423
    monitor-exit p0

    return-void

    .line 406
    :catchall_1d
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/ComprehensiveCountryDetector;
    throw v0
.end method

.method private declared-synchronized startLocationBasedDetector(Landroid/location/CountryListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/CountryListener;

    monitor-enter p0

    .line 358
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_19

    if-eqz v0, :cond_7

    .line 359
    monitor-exit p0

    return-void

    .line 365
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->createLocationBasedCountryDetector()Lcom/android/server/location/CountryDetectorBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    .line 366
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v0, p1}, Lcom/android/server/location/CountryDetectorBase;->setCountryListener(Landroid/location/CountryListener;)V

    .line 367
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v0}, Lcom/android/server/location/CountryDetectorBase;->detectCountry()Landroid/location/Country;
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    .line 368
    monitor-exit p0

    return-void

    .line 357
    .end local p1    # "listener":Landroid/location/CountryListener;
    :catchall_19
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/ComprehensiveCountryDetector;
    throw p1
.end method

.method private declared-synchronized stopLocationBasedDetector()V
    .registers 2

    monitor-enter p0

    .line 375
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    if-eqz v0, :cond_d

    .line 376
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v0}, Lcom/android/server/location/CountryDetectorBase;->stop()V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 379
    :cond_d
    monitor-exit p0

    return-void

    .line 374
    :catchall_f
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/ComprehensiveCountryDetector;
    throw v0
.end method


# virtual methods
.method protected declared-synchronized addPhoneStateListener()V
    .registers 4

    monitor-enter p0

    .line 436
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_14

    .line 437
    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/ComprehensiveCountryDetector$4;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 451
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 453
    :cond_14
    monitor-exit p0

    return-void

    .line 435
    :catchall_16
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/ComprehensiveCountryDetector;
    throw v0
.end method

.method protected createLocationBasedCountryDetector()Lcom/android/server/location/CountryDetectorBase;
    .registers 3

    .line 382
    new-instance v0, Lcom/android/server/location/LocationBasedCountryDetector;

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/location/LocationBasedCountryDetector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public detectCountry()Landroid/location/Country;
    .registers 3

    .line 151
    iget-boolean v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopped:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    move-result-object v0

    return-object v0
.end method

.method protected getLastKnownLocationBasedCountry()Landroid/location/Country;
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    return-object v0
.end method

.method protected getLocaleCountry()Landroid/location/Country;
    .registers 5

    .line 255
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 256
    .local v0, "defaultLocale":Ljava/util/Locale;
    if-eqz v0, :cond_11

    .line 257
    new-instance v1, Landroid/location/Country;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 259
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getNetworkBasedCountry()Landroid/location/Country;
    .registers 4

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "countryIso":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isNetworkCountryCodeAvailable()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 224
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 226
    new-instance v1, Landroid/location/Country;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 229
    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getSimBasedCountry()Landroid/location/Country;
    .registers 4

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "countryIso":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 246
    new-instance v1, Landroid/location/Country;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 248
    :cond_14
    const/4 v1, 0x0

    return-object v1
.end method

.method protected isAirplaneModeOff()Z
    .registers 4

    .line 386
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mContext:Landroid/content/Context;

    .line 387
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 386
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_11

    const/4 v2, 0x1

    nop

    :cond_11
    return v2
.end method

.method protected isGeoCoderImplemented()Z
    .registers 2

    .line 463
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized removePhoneStateListener()V
    .registers 4

    monitor-enter p0

    .line 456
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_10

    .line 457
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 460
    :cond_10
    monitor-exit p0

    return-void

    .line 455
    :catchall_12
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/ComprehensiveCountryDetector;
    throw v0
.end method

.method runAfterDetection(Landroid/location/Country;Landroid/location/Country;ZZ)V
    .registers 7
    .param p1, "country"    # Landroid/location/Country;
    .param p2, "detectedCountry"    # Landroid/location/Country;
    .param p3, "notifyChange"    # Z
    .param p4, "startLocationBasedDetection"    # Z

    .line 314
    if-eqz p3, :cond_5

    .line 315
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->notifyIfCountryChanged(Landroid/location/Country;Landroid/location/Country;)V

    .line 327
    :cond_5
    const/4 v0, 0x1

    if-eqz p4, :cond_25

    if-eqz p2, :cond_10

    .line 328
    invoke-virtual {p2}, Landroid/location/Country;->getSource()I

    move-result v1

    if-le v1, v0, :cond_25

    .line 329
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isAirplaneModeOff()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isGeoCoderImplemented()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 336
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

    invoke-direct {p0, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;->startLocationBasedDetector(Landroid/location/CountryListener;)V

    .line 338
    :cond_25
    if-eqz p2, :cond_35

    .line 339
    invoke-virtual {p2}, Landroid/location/Country;->getSource()I

    move-result v1

    if-lt v1, v0, :cond_2e

    goto :goto_35

    .line 349
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 350
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    goto :goto_38

    .line 345
    :cond_35
    :goto_35
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->scheduleLocationRefresh()V

    .line 352
    :goto_38
    return-void
.end method

.method protected runAfterDetectionAsync(Landroid/location/Country;Landroid/location/Country;ZZ)V
    .registers 13
    .param p1, "country"    # Landroid/location/Country;
    .param p2, "detectedCountry"    # Landroid/location/Country;
    .param p3, "notifyChange"    # Z
    .param p4, "startLocationBasedDetection"    # Z

    .line 283
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/location/ComprehensiveCountryDetector$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/ComprehensiveCountryDetector$2;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/location/Country;Landroid/location/Country;ZZ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    return-void
.end method

.method public setCountryListener(Landroid/location/CountryListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/location/CountryListener;

    .line 294
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    .line 295
    .local v0, "prevListener":Landroid/location/CountryListener;
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    .line 296
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    if-nez v1, :cond_1f

    .line 298
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->removePhoneStateListener()V

    .line 299
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    .line 300
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 301
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    .line 302
    iget-wide v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalTime:J

    iget-wide v3, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalTime:J

    goto :goto_35

    .line 303
    :cond_1f
    if-nez v0, :cond_35

    .line 304
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->addPhoneStateListener()V

    .line 305
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStartTime:J

    .line 307
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    .line 308
    iput v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    .line 310
    :cond_35
    :goto_35
    return-void
.end method

.method public stop()V
    .registers 3

    .line 157
    const-string v0, "CountryDetector"

    const-string v1, "Stop the detector."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 159
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->removePhoneStateListener()V

    .line 160
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopped:Z

    .line 163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .line 468
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 469
    .local v0, "currentTime":J
    const-wide/16 v2, 0x0

    .line 470
    .local v2, "currentSessionLength":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "ComprehensiveCountryDetector{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    iget-wide v5, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_37

    .line 474
    iget-wide v5, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStartTime:J

    sub-long v2, v0, v5

    .line 475
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "timeRunning="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 478
    :cond_37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lastRunTimeLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    iget-wide v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    :goto_56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "totalCountServiceStateChanges="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentCountServiceStateChanges="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "totalTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalTime:J

    add-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const-string v5, "countries="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    iget-object v5, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_ce
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Country;

    .line 486
    .local v6, "country":Landroid/location/Country;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/location/Country;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .end local v6    # "country":Landroid/location/Country;
    goto :goto_ce

    .line 488
    :cond_f3
    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
