.class public final Lcom/android/server/location/GnssCollectData;
.super Ljava/lang/Object;
.source "GnssCollectData.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final IS_STABLE_VERSION:Z

.field public static final STATE_FIX:I = 0x2

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_LOSE:I = 0x4

.field public static final STATE_SAVE:I = 0x5

.field public static final STATE_START:I = 0x1

.field public static final STATE_STOP:I = 0x3

.field public static final STATE_UNKNOWN:I = 0x64

.field private static final TAG:Ljava/lang/String; = "GnssCD"

.field private static mCollectdataPath:Ljava/lang/String;

.field public static mCurrentState:I

.field private static mHandler:Landroid/os/Handler;

.field private static mHandlerThread:Landroid/os/HandlerThread;

.field private static mMqsEventManagerDelegate:Lmiui/mqsas/sdk/MQSEventManagerDelegate;

.field private static mMqsGpsModuleId:Ljava/lang/String;

.field private static mSessionInfo:Lcom/android/server/location/GnssSessionInfo;

.field private static mjsonArray:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-string v0, "/data/mqsas/gps/gps-strength"

    sput-object v0, Lcom/android/server/location/GnssCollectData;->mCollectdataPath:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/android/server/location/GnssSessionInfo;

    invoke-direct {v0}, Lcom/android/server/location/GnssSessionInfo;-><init>()V

    sput-object v0, Lcom/android/server/location/GnssCollectData;->mSessionInfo:Lcom/android/server/location/GnssSessionInfo;

    .line 34
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/android/server/location/GnssCollectData;->mjsonArray:Lorg/json/JSONArray;

    .line 42
    const/16 v0, 0x64

    sput v0, Lcom/android/server/location/GnssCollectData;->mCurrentState:I

    .line 43
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/GnssCollectData;->mMqsEventManagerDelegate:Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    .line 44
    const-string/jumbo v0, "mqs_gps_data_63921000"

    sput-object v0, Lcom/android/server/location/GnssCollectData;->mMqsGpsModuleId:Ljava/lang/String;

    .line 45
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v0, Lcom/android/server/location/GnssCollectData;->IS_STABLE_VERSION:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 24
    invoke-static {}, Lcom/android/server/location/GnssCollectData;->saveStartStatus()V

    return-void
.end method

.method static synthetic access$100(I)V
    .registers 1
    .param p0, "x0"    # I

    .line 24
    invoke-static {p0}, Lcom/android/server/location/GnssCollectData;->setCurrentState(I)V

    return-void
.end method

.method static synthetic access$200()V
    .registers 0

    .line 24
    invoke-static {}, Lcom/android/server/location/GnssCollectData;->saveFixStatus()V

    return-void
.end method

.method static synthetic access$300()V
    .registers 0

    .line 24
    invoke-static {}, Lcom/android/server/location/GnssCollectData;->saveStopStatus()V

    return-void
.end method

.method static synthetic access$400()V
    .registers 0

    .line 24
    invoke-static {}, Lcom/android/server/location/GnssCollectData;->saveState()V

    return-void
.end method

.method static synthetic access$500()V
    .registers 0

    .line 24
    invoke-static {}, Lcom/android/server/location/GnssCollectData;->saveLoseStatus()V

    return-void
.end method

.method static synthetic access$600()V
    .registers 0

    .line 24
    invoke-static {}, Lcom/android/server/location/GnssCollectData;->saveLog()V

    return-void
.end method

.method private static allowCollect()Z
    .registers 2

    .line 58
    const-string/jumbo v0, "persist.sys.mqs.gps"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "controlProperty":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/location/GnssCollectData;->IS_STABLE_VERSION:Z

    if-nez v1, :cond_17

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .registers 7

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 157
    .local v0, "mNow":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 159
    .local v3, "c":Ljava/util/Calendar;
    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 160
    const-string v4, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v6, 0x3

    aput-object v3, v5, v6

    const/4 v6, 0x4

    aput-object v3, v5, v6

    const/4 v6, 0x5

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static packToJsonArray()Ljava/lang/String;
    .registers 5

    .line 69
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v0, "jsonObj":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v1, "startTime"

    sget-object v2, Lcom/android/server/location/GnssCollectData;->mSessionInfo:Lcom/android/server/location/GnssSessionInfo;

    invoke-virtual {v2}, Lcom/android/server/location/GnssSessionInfo;->getStartTimeInHour()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    const-string v1, "TTFF"

    sget-object v2, Lcom/android/server/location/GnssCollectData;->mSessionInfo:Lcom/android/server/location/GnssSessionInfo;

    invoke-virtual {v2}, Lcom/android/server/location/GnssSessionInfo;->getTtff()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 74
    const-string/jumbo v1, "runTime"

    sget-object v2, Lcom/android/server/location/GnssCollectData;->mSessionInfo:Lcom/android/server/location/GnssSessionInfo;

    invoke-virtual {v2}, Lcom/android/server/location/GnssSessionInfo;->getRunTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 75
    const-string/jumbo v1, "loseTimes"

    sget-object v2, Lcom/android/server/location/GnssCollectData;->mSessionInfo:Lcom/android/server/location/GnssSessionInfo;

    invoke-virtual {v2}, Lcom/android/server/location/GnssSessionInfo;->getLoseTimes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    sget-object v1, Lcom/android/server/location/GnssCollectData;->mjsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 77
    sget-object v1, Lcom/android/server/location/GnssCollectData;->mjsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3f} :catch_40

    .line 85
    .local v1, "jsonString":Ljava/lang/String;
    goto :goto_58

    .line 82
    .end local v1    # "jsonString":Ljava/lang/String;
    :catch_40
    move-exception v1

    .line 83
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "GnssCD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, "jsonString":Ljava/lang/String;
    :goto_58
    return-object v1
.end method

.method private static saveFixStatus()V
    .registers 1

    .line 250
    sget-object v0, Lcom/android/server/location/GnssCollectData;->mSessionInfo:Lcom/android/server/location/GnssSessionInfo;

    invoke-virtual {v0}, Lcom/android/server/location/GnssSessionInfo;->setTtffAuto()V

    .line 251
    return-void
.end method

.method private static saveLog()V
    .registers 6

    .line 130
    invoke-static {}, Lcom/android/server/location/GnssCollectData;->packToJsonArray()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "output":Ljava/lang/String;
    sget-object v1, Lcom/android/server/location/GnssCollectData;->mSessionInfo:Lcom/android/server/location/GnssSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/location/GnssSessionInfo;->checkValidity()Z

    move-result v1

    if-eqz v1, :cond_54

    if-nez v0, :cond_f

    goto :goto_54

    .line 136
    :cond_f
    sget-object v1, Lcom/android/server/location/GnssCollectData;->mjsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_53

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v1, "jsons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 139
    .local v2, "i":I
    :goto_1f
    sget-object v3, Lcom/android/server/location/GnssCollectData;->mjsonArray:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 140
    sget-object v3, Lcom/android/server/location/GnssCollectData;->mjsonArray:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 144
    .end local v2    # "i":I
    :cond_37
    sget-object v2, Lcom/android/server/location/GnssCollectData;->mMqsEventManagerDelegate:Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    const-string v3, "GpsInfo"

    sget-object v4, Lcom/android/server/location/GnssCollectData;->mMqsGpsModuleId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v1, v4, v5}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportEventsV2(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    .line 145
    invoke-static {v0}, Lcom/android/server/location/GnssCollectData;->saveToFile(Ljava/lang/String;)V

    .line 146
    const-string v2, "GnssCD"

    const-string/jumbo v3, "send to MQS & file"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    sput-object v2, Lcom/android/server/location/GnssCollectData;->mjsonArray:Lorg/json/JSONArray;

    .line 149
    .end local v1    # "jsons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_53
    return-void

    .line 133
    :cond_54
    :goto_54
    return-void
.end method

.method private static saveLoseStatus()V
    .registers 1

    .line 254
    sget-object v0, Lcom/android/server/location/GnssCollectData;->mSessionInfo:Lcom/android/server/location/GnssSessionInfo;

    invoke-virtual {v0}, Lcom/android/server/location/GnssSessionInfo;->setLostTimes()V

    .line 255
    return-void
.end method

.method public static savePoint(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "currentpoint"    # Ljava/lang/String;
    .param p1, "extraInfo"    # Ljava/lang/String;

    .line 174
    invoke-static {}, Lcom/android/server/location/GnssCollectData;->allowCollect()Z

    move-result v0

    if-nez v0, :cond_f

    .line 175
    const-string v0, "GnssCD"

    const-string/jumbo v1, "no GnssCD enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void

    .line 179
    :cond_f
    const-string v0, "INIT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 180
    invoke-static {}, Lcom/android/server/location/GnssCollectData;->startHandlerThread()V

    .line 181
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/location/GnssCollectData;->setCurrentState(I)V

    goto :goto_78

    .line 182
    :cond_1f
    const-string v0, "START"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    .line 183
    sget v0, Lcom/android/server/location/GnssCollectData;->mCurrentState:I

    if-eqz v0, :cond_36

    sget v0, Lcom/android/server/location/GnssCollectData;->mCurrentState:I

    if-eq v0, v1, :cond_36

    sget v0, Lcom/android/server/location/GnssCollectData;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_78

    .line 184
    :cond_36
    sget-object v0, Lcom/android/server/location/GnssCollectData;->mSessionInfo:Lcom/android/server/location/GnssSessionInfo;

    invoke-virtual {v0}, Lcom/android/server/location/GnssSessionInfo;->newSessionReset()V

    .line 185
    invoke-static {v2, p1}, Lcom/android/server/location/GnssCollectData;->sendMessage(ILjava/lang/Object;)V

    goto :goto_78

    .line 187
    :cond_3f
    const-string v0, "FIX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_50

    .line 188
    sget v0, Lcom/android/server/location/GnssCollectData;->mCurrentState:I

    if-ne v0, v2, :cond_78

    .line 189
    invoke-static {v3, p1}, Lcom/android/server/location/GnssCollectData;->sendMessage(ILjava/lang/Object;)V

    goto :goto_78

    .line 191
    :cond_50
    const-string v0, "STOP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x4

    if-eqz v0, :cond_69

    .line 192
    sget v0, Lcom/android/server/location/GnssCollectData;->mCurrentState:I

    if-eq v0, v2, :cond_65

    sget v0, Lcom/android/server/location/GnssCollectData;->mCurrentState:I

    if-eq v0, v3, :cond_65

    sget v0, Lcom/android/server/location/GnssCollectData;->mCurrentState:I

    if-ne v0, v4, :cond_78

    .line 193
    :cond_65
    invoke-static {v1, p1}, Lcom/android/server/location/GnssCollectData;->sendMessage(ILjava/lang/Object;)V

    goto :goto_78

    .line 195
    :cond_69
    const-string v0, "LOSE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 196
    sget v0, Lcom/android/server/location/GnssCollectData;->mCurrentState:I

    if-ne v0, v3, :cond_78

    .line 197
    invoke-static {v4, p1}, Lcom/android/server/location/GnssCollectData;->sendMessage(ILjava/lang/Object;)V

    .line 203
    :cond_78
    :goto_78
    return-void

    .line 201
    :cond_79
    return-void
.end method

.method private static saveStartStatus()V
    .registers 1

    .line 246
    sget-object v0, Lcom/android/server/location/GnssCollectData;->mSessionInfo:Lcom/android/server/location/GnssSessionInfo;

    invoke-virtual {v0}, Lcom/android/server/location/GnssSessionInfo;->setStart()V

    .line 247
    return-void
.end method

.method private static saveState()V
    .registers 2

    .line 262
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/location/GnssCollectData;->sendMessage(ILjava/lang/Object;)V

    .line 263
    return-void
.end method

.method private static saveStopStatus()V
    .registers 1

    .line 258
    sget-object v0, Lcom/android/server/location/GnssCollectData;->mSessionInfo:Lcom/android/server/location/GnssSessionInfo;

    invoke-virtual {v0}, Lcom/android/server/location/GnssSessionInfo;->setEnd()V

    .line 259
    return-void
.end method

.method private static saveToFile(Ljava/lang/String;)V
    .registers 9
    .param p0, "messageToFile"    # Ljava/lang/String;

    .line 93
    const-wide/16 v0, 0x0

    .line 94
    .local v0, "fileSize":J
    const/4 v2, 0x0

    .line 96
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/server/location/GnssCollectData;->mCollectdataPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, "bigdataFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 98
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    move-wide v0, v4

    .line 99
    const-wide/16 v4, 0x5

    cmp-long v4, v0, v4

    if-lez v4, :cond_36

    .line 101
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 102
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 103
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    goto :goto_36

    .line 106
    :cond_2c
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 107
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 110
    :cond_36
    :goto_36
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v2, v4

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_44} :catch_50
    .catchall {:try_start_3 .. :try_end_44} :catchall_4e

    .line 115
    .end local v3    # "bigdataFile":Ljava/io/File;
    nop

    .line 117
    :try_start_45
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    .line 120
    :goto_48
    goto :goto_5a

    .line 118
    :catch_49
    move-exception v3

    .line 119
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_48

    .line 115
    :catchall_4e
    move-exception v3

    goto :goto_5b

    .line 112
    :catch_50
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/Exception;
    :try_start_51
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4e

    .line 115
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_5a

    .line 117
    :try_start_56
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_49

    goto :goto_48

    .line 123
    :cond_5a
    :goto_5a
    return-void

    .line 115
    :goto_5b
    if-eqz v2, :cond_65

    .line 117
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    .line 120
    goto :goto_65

    .line 118
    :catch_61
    move-exception v4

    .line 119
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 120
    .end local v4    # "e":Ljava/io/IOException;
    :cond_65
    :goto_65
    throw v3
.end method

.method private static sendMessage(ILjava/lang/Object;)V
    .registers 4
    .param p0, "message"    # I
    .param p1, "obj"    # Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/server/location/GnssCollectData;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_d

    .line 166
    const-string v0, "GnssCD"

    const-string/jumbo v1, "mhandler is null  "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 169
    :cond_d
    sget-object v0, Lcom/android/server/location/GnssCollectData;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 170
    .local v0, "lMessage":Landroid/os/Message;
    sget-object v1, Lcom/android/server/location/GnssCollectData;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    return-void
.end method

.method private static setCurrentState(I)V
    .registers 1
    .param p0, "s"    # I

    .line 242
    sput p0, Lcom/android/server/location/GnssCollectData;->mCurrentState:I

    .line 243
    return-void
.end method

.method private static startHandlerThread()V
    .registers 2

    .line 206
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GnssCD thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/location/GnssCollectData;->mHandlerThread:Landroid/os/HandlerThread;

    .line 207
    sget-object v0, Lcom/android/server/location/GnssCollectData;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 208
    new-instance v0, Lcom/android/server/location/GnssCollectData$1;

    sget-object v1, Lcom/android/server/location/GnssCollectData;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/location/GnssCollectData$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/location/GnssCollectData;->mHandler:Landroid/os/Handler;

    .line 239
    return-void
.end method
