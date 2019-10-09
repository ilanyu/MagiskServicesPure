.class public Lcom/android/server/pm/CloudControlPreinstallService;
.super Lcom/android/server/SystemService;
.source "CloudControlPreinstallService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/CloudControlPreinstallService$PackageDeleteObserver;,
        Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;,
        Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;,
        Lcom/android/server/pm/CloudControlPreinstallService$Action;
    }
.end annotation


# static fields
.field public static final CLAUSE_AGREED:Ljava/lang/String; = "clause_agreed"

.field public static final CLAUSE_AGREED_ACTION:Ljava/lang/String; = "com.miui.clause_agreed"

.field private static final CONF_ID:Ljava/lang/String; = "confId"

.field private static final DEBUG:Z = true

.field private static final DEFAULT_CONNECT_TIME_OUT:I = 0x7d0

.field private static final DEFAULT_READ_TIME_OUT:I = 0x7d0

.field private static final IMEI_MD5:Ljava/lang/String; = "imeiMd5"

.field private static final JSON_EXCEPTION:Ljava/lang/String; = "json_exception"

.field private static final LOGTYPE_EVENT:I = 0x0

.field private static final NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field private static final OFFLINE_COUNT:Ljava/lang/String; = "offlineCount"

.field private static final PACKAGE_KEY:Ljava/lang/String; = "com.xiaomi.preload"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final REQUEST_CONNECT_EXCEPTION:Ljava/lang/String; = "request_connect_exception"

.field private static final SERVER_ADDRESS:Ljava/lang/String; = "https://control.preload.xiaomi.com/offline_app_list/get?"

.field private static final TAG:Ljava/lang/String; = "CloudControlPreinstall"

.field private static final TRACK_EVENT_KEY:Ljava/lang/String; = "preload_event"

.field private static final TRACK_KEY:Ljava/lang/String; = "preload_appoffine"

.field private static final UNINSTALL_FAILED:Ljava/lang/String; = "uninstall_failed"


# instance fields
.field private mImeiMe5:Ljava/lang/String;

.field private mNetworkType:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 327
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 285
    new-instance v0, Lcom/android/server/pm/CloudControlPreinstallService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/CloudControlPreinstallService$1;-><init>(Lcom/android/server/pm/CloudControlPreinstallService;)V

    iput-object v0, p0, Lcom/android/server/pm/CloudControlPreinstallService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 328
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/CloudControlPreinstallService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/CloudControlPreinstallService;

    .line 45
    invoke-direct {p0}, Lcom/android/server/pm/CloudControlPreinstallService;->getUninstallApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/CloudControlPreinstallService;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/CloudControlPreinstallService;
    .param p1, "x1"    # Ljava/util/List;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/pm/CloudControlPreinstallService;->uninstallAppsUpdateList(Ljava/util/List;)V

    return-void
.end method

.method private closeBufferedReader(Ljava/io/BufferedReader;)V
    .registers 3
    .param p1, "br"    # Ljava/io/BufferedReader;

    .line 495
    if-eqz p1, :cond_a

    .line 497
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 500
    goto :goto_a

    .line 498
    :catch_6
    move-exception v0

    .line 499
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 502
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    :goto_a
    return-void
.end method

.method public static exists(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 556
    const/16 v0, 0x80

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_7} :catch_c

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    nop

    :cond_b
    return v1

    .line 558
    :catch_c
    move-exception v0

    .line 559
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private getConnectEntity()Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .registers 24

    .line 374
    move-object/from16 v1, p0

    const/4 v0, 0x0

    move-object v2, v0

    .line 376
    .local v2, "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    :try_start_4
    const-string v3, "get_device_info"

    invoke-virtual {v1, v3}, Lcom/android/server/pm/CloudControlPreinstallService;->trackEvent(Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/TelephonyManager;->getImeiList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 379
    .local v3, "imei":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-static {v3}, Lcom/android/server/pm/CloudSignUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_24

    :cond_22
    const-string v4, ""

    :goto_24
    iput-object v4, v1, Lcom/android/server/pm/CloudControlPreinstallService;->mImeiMe5:Ljava/lang/String;

    .line 381
    sget-object v6, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 382
    .local v6, "device":Ljava/lang/String;
    sget-object v7, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 383
    .local v7, "miuiVersion":Ljava/lang/String;
    invoke-static {}, Lmiui/os/Build;->getCustVariant()Ljava/lang/String;

    move-result-object v8

    .line 384
    .local v8, "channel":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    .line 385
    .local v11, "lang":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/CloudSignUtil;->getNonceStr()Ljava/lang/String;

    move-result-object v12

    .line 386
    .local v12, "nonceStr":Ljava/lang/String;
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v4, v4, 0x1

    .line 387
    .local v4, "isCn":Z
    if-eqz v4, :cond_44

    const-string v5, "CN"

    :goto_42
    move-object v9, v5

    goto :goto_4d

    :cond_44
    invoke-static {}, Lmiui/os/Build;->getCustVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_42

    .line 388
    .local v9, "region":Ljava/lang/String;
    :goto_4d
    iget-object v5, v1, Lcom/android/server/pm/CloudControlPreinstallService;->mImeiMe5:Ljava/lang/String;

    move v10, v4

    invoke-static/range {v5 .. v12}, Lcom/android/server/pm/CloudSignUtil;->getSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 390
    .local v5, "sign":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5b

    goto :goto_72

    .line 391
    :cond_5b
    new-instance v0, Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;

    iget-object v14, v1, Lcom/android/server/pm/CloudControlPreinstallService;->mImeiMe5:Ljava/lang/String;

    move-object v13, v0

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v5

    move/from16 v21, v4

    move-object/from16 v22, v9

    invoke-direct/range {v13 .. v22}, Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_72
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_72} :catch_79
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_72} :catch_74

    :goto_72
    move-object v2, v0

    .line 396
    .end local v3    # "imei":Ljava/lang/String;
    .end local v4    # "isCn":Z
    .end local v5    # "sign":Ljava/lang/String;
    .end local v6    # "device":Ljava/lang/String;
    .end local v7    # "miuiVersion":Ljava/lang/String;
    .end local v8    # "channel":Ljava/lang/String;
    .end local v9    # "region":Ljava/lang/String;
    .end local v11    # "lang":Ljava/lang/String;
    .end local v12    # "nonceStr":Ljava/lang/String;
    :goto_73
    goto :goto_7e

    .line 394
    :catch_74
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_7e

    .line 392
    :catch_79
    move-exception v0

    .line 393
    .local v0, "ex":Ljava/util/NoSuchElementException;
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    .end local v0    # "ex":Ljava/util/NoSuchElementException;
    goto :goto_73

    .line 398
    :goto_7e
    if-nez v2, :cond_85

    .line 399
    const-string v0, "get_device_info_failed"

    invoke-virtual {v1, v0}, Lcom/android/server/pm/CloudControlPreinstallService;->trackEvent(Ljava/lang/String;)V

    .line 402
    :cond_85
    return-object v2
.end method

.method private getUninstallApps()Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;",
            ">;"
        }
    .end annotation

    .line 406
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 408
    .local v2, "uninstallApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/CloudControlPreinstallService;->getConnectEntity()Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;

    move-result-object v3

    .line 410
    .local v3, "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    if-nez v3, :cond_f

    return-object v2

    .line 412
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://control.preload.xiaomi.com/offline_app_list/get?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, "url":Ljava/lang/String;
    const-string v0, "CloudControlPreinstall"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v5, 0x0

    .line 417
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v0, 0x0

    move-object v6, v0

    .line 420
    .local v6, "br":Ljava/io/BufferedReader;
    :try_start_3e
    const-string/jumbo v0, "request_connect_start"

    invoke-virtual {v1, v0}, Lcom/android/server/pm/CloudControlPreinstallService;->trackEvent(Ljava/lang/String;)V

    .line 422
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 423
    const/16 v0, 0x7d0

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 424
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 425
    const-string v0, "GET"

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 428
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 429
    .local v0, "responeCode":I
    const/16 v7, 0xc8

    if-ne v0, v7, :cond_1e0

    .line 430
    const-string/jumbo v7, "request_connect_success"

    invoke-virtual {v1, v7}, Lcom/android/server/pm/CloudControlPreinstallService;->trackEvent(Ljava/lang/String;)V

    .line 432
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x400

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_7e
    .catch Ljava/net/ProtocolException; {:try_start_3e .. :try_end_7e} :catch_238
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_7e} :catch_227
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_7e} :catch_216
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_7e} :catch_205
    .catchall {:try_start_3e .. :try_end_7e} :catchall_1ff

    move-object v6, v7

    .line 433
    :try_start_7f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .local v7, "sb":Ljava/lang/StringBuilder;
    :goto_84
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8
    :try_end_88
    .catch Ljava/net/ProtocolException; {:try_start_7f .. :try_end_88} :catch_1d8
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_88} :catch_1d0
    .catch Lorg/json/JSONException; {:try_start_7f .. :try_end_88} :catch_1c8
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_88} :catch_1c0
    .catchall {:try_start_7f .. :try_end_88} :catchall_1b7

    move-object v9, v8

    .line 435
    .local v9, "line":Ljava/lang/String;
    if-eqz v8, :cond_b2

    .line 436
    :try_start_8b
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8e
    .catch Ljava/net/ProtocolException; {:try_start_8b .. :try_end_8e} :catch_ab
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_a4
    .catch Lorg/json/JSONException; {:try_start_8b .. :try_end_8e} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_96
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8f

    goto :goto_84

    .line 484
    .end local v0    # "responeCode":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "line":Ljava/lang/String;
    :catchall_8f
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto/16 :goto_251

    .line 480
    :catch_96
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto/16 :goto_20a

    .line 477
    :catch_9d
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto/16 :goto_21b

    .line 474
    :catch_a4
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto/16 :goto_22c

    .line 471
    :catch_ab
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto/16 :goto_23d

    .line 439
    .restart local v0    # "responeCode":I
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v9    # "line":Ljava/lang/String;
    :cond_b2
    :try_start_b2
    const-string v8, "CloudControlPreinstall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "result:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 442
    .local v8, "result":Lorg/json/JSONObject;
    const-string v10, "code"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 443
    .local v10, "code":I
    const-string/jumbo v11, "message"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 444
    .local v11, "message":Ljava/lang/String;
    if-nez v10, :cond_184

    const-string v12, "Success"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_184

    .line 445
    const-string/jumbo v12, "request_list_success"

    invoke-virtual {v1, v12}, Lcom/android/server/pm/CloudControlPreinstallService;->trackEvent(Ljava/lang/String;)V

    .line 447
    const-string v12, "data"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 448
    .local v12, "data":Lorg/json/JSONObject;
    const-string v13, "appList"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 449
    .local v13, "appList":Lorg/json/JSONArray;
    const-string v14, "channel"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 451
    .local v14, "channelResult":Ljava/lang/String;
    const/4 v15, 0x0

    .line 451
    .local v15, "index":I
    :goto_106
    move/from16 v16, v0

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 451
    .end local v0    # "responeCode":I
    .local v16, "responeCode":I
    if-ge v15, v0, :cond_17d

    .line 452
    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_112
    .catch Ljava/net/ProtocolException; {:try_start_b2 .. :try_end_112} :catch_1d8
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_112} :catch_1d0
    .catch Lorg/json/JSONException; {:try_start_b2 .. :try_end_112} :catch_1c8
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_112} :catch_1c0
    .catchall {:try_start_b2 .. :try_end_112} :catchall_1b7

    .line 454
    .local v0, "appinfo":Lorg/json/JSONObject;
    move-object/from16 v17, v3

    :try_start_114
    const-string/jumbo v3, "packageName"

    .line 454
    .end local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .local v17, "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_11b
    .catch Ljava/net/ProtocolException; {:try_start_114 .. :try_end_11b} :catch_176
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_11b} :catch_16f
    .catch Lorg/json/JSONException; {:try_start_114 .. :try_end_11b} :catch_168
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_11b} :catch_161
    .catchall {:try_start_114 .. :try_end_11b} :catchall_15a

    .line 455
    .local v3, "pkgName":Ljava/lang/String;
    move-object/from16 v18, v4

    :try_start_11d
    const-string v4, "confId"

    .line 455
    .end local v4    # "url":Ljava/lang/String;
    .local v18, "url":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_123
    .catch Ljava/net/ProtocolException; {:try_start_11d .. :try_end_123} :catch_155
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_123} :catch_150
    .catch Lorg/json/JSONException; {:try_start_11d .. :try_end_123} :catch_14b
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_123} :catch_146
    .catchall {:try_start_11d .. :try_end_123} :catchall_141

    .line 456
    .local v4, "confId":I
    move-object/from16 v19, v6

    :try_start_125
    const-string/jumbo v6, "offlineCount"

    .line 456
    .end local v6    # "br":Ljava/io/BufferedReader;
    .local v19, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 457
    .local v6, "offlineCount":I
    move-object/from16 v20, v0

    new-instance v0, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;

    .line 457
    .end local v0    # "appinfo":Lorg/json/JSONObject;
    .local v20, "appinfo":Lorg/json/JSONObject;
    invoke-direct {v0, v3, v14, v4, v6}, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "confId":I
    .end local v6    # "offlineCount":I
    .end local v20    # "appinfo":Lorg/json/JSONObject;
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    goto :goto_106

    .line 484
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "result":Lorg/json/JSONObject;
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "code":I
    .end local v11    # "message":Ljava/lang/String;
    .end local v12    # "data":Lorg/json/JSONObject;
    .end local v13    # "appList":Lorg/json/JSONArray;
    .end local v14    # "channelResult":Ljava/lang/String;
    .end local v15    # "index":I
    .end local v16    # "responeCode":I
    .end local v19    # "br":Ljava/io/BufferedReader;
    .local v6, "br":Ljava/io/BufferedReader;
    :catchall_141
    move-exception v0

    move-object/from16 v19, v6

    .line 484
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v19    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_251

    .line 480
    .end local v19    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catch_146
    move-exception v0

    move-object/from16 v19, v6

    .line 480
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v19    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_20a

    .line 477
    .end local v19    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catch_14b
    move-exception v0

    move-object/from16 v19, v6

    .line 477
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v19    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_21b

    .line 474
    .end local v19    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catch_150
    move-exception v0

    move-object/from16 v19, v6

    .line 474
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v19    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_22c

    .line 471
    .end local v19    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catch_155
    move-exception v0

    move-object/from16 v19, v6

    .line 471
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v19    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_23d

    .line 484
    .end local v18    # "url":Ljava/lang/String;
    .end local v19    # "br":Ljava/io/BufferedReader;
    .local v4, "url":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catchall_15a
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    .line 484
    .end local v4    # "url":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v18    # "url":Ljava/lang/String;
    .restart local v19    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_251

    .line 480
    .end local v18    # "url":Ljava/lang/String;
    .end local v19    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catch_161
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    .line 480
    .end local v4    # "url":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v18    # "url":Ljava/lang/String;
    .restart local v19    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_20a

    .line 477
    .end local v18    # "url":Ljava/lang/String;
    .end local v19    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catch_168
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    .line 477
    .end local v4    # "url":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v18    # "url":Ljava/lang/String;
    .restart local v19    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_21b

    .line 474
    .end local v18    # "url":Ljava/lang/String;
    .end local v19    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catch_16f
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    .line 474
    .end local v4    # "url":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v18    # "url":Ljava/lang/String;
    .restart local v19    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_22c

    .line 471
    .end local v18    # "url":Ljava/lang/String;
    .end local v19    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catch_176
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    .line 471
    .end local v4    # "url":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v18    # "url":Ljava/lang/String;
    .restart local v19    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_23d

    .line 460
    .end local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v18    # "url":Ljava/lang/String;
    .end local v19    # "br":Ljava/io/BufferedReader;
    .local v3, "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "result":Lorg/json/JSONObject;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v10    # "code":I
    .restart local v11    # "message":Ljava/lang/String;
    .restart local v16    # "responeCode":I
    :cond_17d
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    .line 460
    .end local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v4    # "url":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v18    # "url":Ljava/lang/String;
    .restart local v19    # "br":Ljava/io/BufferedReader;
    goto :goto_19a

    .line 461
    .end local v16    # "responeCode":I
    .end local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v18    # "url":Ljava/lang/String;
    .end local v19    # "br":Ljava/io/BufferedReader;
    .local v0, "responeCode":I
    .restart local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :cond_184
    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    .line 461
    .end local v0    # "responeCode":I
    .end local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v4    # "url":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "responeCode":I
    .restart local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v18    # "url":Ljava/lang/String;
    .restart local v19    # "br":Ljava/io/BufferedReader;
    const-string/jumbo v0, "request_list_failed"

    invoke-virtual {v1, v0}, Lcom/android/server/pm/CloudControlPreinstallService;->trackEvent(Ljava/lang/String;)V

    .line 463
    const-string v0, "CloudControlPreinstall"

    const-string/jumbo v3, "request result is failed"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19a
    .catch Ljava/net/ProtocolException; {:try_start_125 .. :try_end_19a} :catch_1b2
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_19a} :catch_1ad
    .catch Lorg/json/JSONException; {:try_start_125 .. :try_end_19a} :catch_1a8
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_19a} :catch_1a3
    .catchall {:try_start_125 .. :try_end_19a} :catchall_19e

    .line 466
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "result":Lorg/json/JSONObject;
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "code":I
    .end local v11    # "message":Ljava/lang/String;
    :goto_19a
    nop

    .line 484
    move-object/from16 v6, v19

    goto :goto_1f4

    .line 484
    .end local v16    # "responeCode":I
    :catchall_19e
    move-exception v0

    move-object/from16 v6, v19

    goto/16 :goto_251

    .line 480
    :catch_1a3
    move-exception v0

    move-object/from16 v6, v19

    goto/16 :goto_20a

    .line 477
    :catch_1a8
    move-exception v0

    move-object/from16 v6, v19

    goto/16 :goto_21b

    .line 474
    :catch_1ad
    move-exception v0

    move-object/from16 v6, v19

    goto/16 :goto_22c

    .line 471
    :catch_1b2
    move-exception v0

    move-object/from16 v6, v19

    goto/16 :goto_23d

    .line 484
    .end local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v18    # "url":Ljava/lang/String;
    .end local v19    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catchall_1b7
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    .line 484
    .end local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v4    # "url":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v18    # "url":Ljava/lang/String;
    .restart local v19    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_251

    .line 480
    .end local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v18    # "url":Ljava/lang/String;
    .end local v19    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catch_1c0
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    .line 480
    .end local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v4    # "url":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v18    # "url":Ljava/lang/String;
    .restart local v19    # "br":Ljava/io/BufferedReader;
    goto :goto_20a

    .line 477
    .end local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v18    # "url":Ljava/lang/String;
    .end local v19    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catch_1c8
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    .line 477
    .end local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v4    # "url":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v18    # "url":Ljava/lang/String;
    .restart local v19    # "br":Ljava/io/BufferedReader;
    goto :goto_21b

    .line 474
    .end local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v18    # "url":Ljava/lang/String;
    .end local v19    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catch_1d0
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    .line 474
    .end local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v4    # "url":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v18    # "url":Ljava/lang/String;
    .restart local v19    # "br":Ljava/io/BufferedReader;
    goto :goto_22c

    .line 471
    .end local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v18    # "url":Ljava/lang/String;
    .end local v19    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catch_1d8
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    .line 471
    .end local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v4    # "url":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v18    # "url":Ljava/lang/String;
    .restart local v19    # "br":Ljava/io/BufferedReader;
    goto :goto_23d

    .line 467
    .end local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v18    # "url":Ljava/lang/String;
    .end local v19    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "responeCode":I
    .restart local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :cond_1e0
    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 467
    .end local v0    # "responeCode":I
    .end local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v4    # "url":Ljava/lang/String;
    .restart local v16    # "responeCode":I
    .restart local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v18    # "url":Ljava/lang/String;
    :try_start_1e6
    const-string/jumbo v0, "request_connect_failed"

    invoke-virtual {v1, v0}, Lcom/android/server/pm/CloudControlPreinstallService;->trackEvent(Ljava/lang/String;)V

    .line 469
    const-string v0, "CloudControlPreinstall"

    const-string/jumbo v3, "server can not connected"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f4
    .catch Ljava/net/ProtocolException; {:try_start_1e6 .. :try_end_1f4} :catch_1fd
    .catch Ljava/io/IOException; {:try_start_1e6 .. :try_end_1f4} :catch_1fb
    .catch Lorg/json/JSONException; {:try_start_1e6 .. :try_end_1f4} :catch_1f9
    .catch Ljava/lang/Exception; {:try_start_1e6 .. :try_end_1f4} :catch_1f7
    .catchall {:try_start_1e6 .. :try_end_1f4} :catchall_250

    .line 484
    .end local v16    # "responeCode":I
    :goto_1f4
    if-eqz v5, :cond_24b

    goto :goto_248

    .line 480
    :catch_1f7
    move-exception v0

    goto :goto_20a

    .line 477
    :catch_1f9
    move-exception v0

    goto :goto_21b

    .line 474
    :catch_1fb
    move-exception v0

    goto :goto_22c

    .line 471
    :catch_1fd
    move-exception v0

    goto :goto_23d

    .line 484
    .end local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v18    # "url":Ljava/lang/String;
    .restart local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v4    # "url":Ljava/lang/String;
    :catchall_1ff
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 484
    .end local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v4    # "url":Ljava/lang/String;
    .restart local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v18    # "url":Ljava/lang/String;
    goto :goto_251

    .line 480
    .end local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v18    # "url":Ljava/lang/String;
    .restart local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v4    # "url":Ljava/lang/String;
    :catch_205
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 481
    .end local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v4    # "url":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v18    # "url":Ljava/lang/String;
    :goto_20a
    :try_start_20a
    const-string/jumbo v3, "request_connect_exception"

    invoke-virtual {v1, v3}, Lcom/android/server/pm/CloudControlPreinstallService;->trackEvent(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 484
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_24b

    goto :goto_248

    .line 477
    .end local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v18    # "url":Ljava/lang/String;
    .restart local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v4    # "url":Ljava/lang/String;
    :catch_216
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 478
    .end local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v4    # "url":Ljava/lang/String;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v18    # "url":Ljava/lang/String;
    :goto_21b
    const-string/jumbo v3, "json_exception"

    invoke-virtual {v1, v3}, Lcom/android/server/pm/CloudControlPreinstallService;->trackEvent(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 484
    .end local v0    # "e":Lorg/json/JSONException;
    if-eqz v5, :cond_24b

    goto :goto_248

    .line 474
    .end local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v18    # "url":Ljava/lang/String;
    .restart local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v4    # "url":Ljava/lang/String;
    :catch_227
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 475
    .end local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v4    # "url":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v18    # "url":Ljava/lang/String;
    :goto_22c
    const-string/jumbo v3, "request_connect_exception"

    invoke-virtual {v1, v3}, Lcom/android/server/pm/CloudControlPreinstallService;->trackEvent(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 484
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_24b

    goto :goto_248

    .line 471
    .end local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v18    # "url":Ljava/lang/String;
    .restart local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v4    # "url":Ljava/lang/String;
    :catch_238
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 472
    .end local v3    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .end local v4    # "url":Ljava/lang/String;
    .local v0, "e":Ljava/net/ProtocolException;
    .restart local v17    # "entity":Lcom/android/server/pm/CloudControlPreinstallService$ConnectEntity;
    .restart local v18    # "url":Ljava/lang/String;
    :goto_23d
    const-string/jumbo v3, "request_connect_exception"

    invoke-virtual {v1, v3}, Lcom/android/server/pm/CloudControlPreinstallService;->trackEvent(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V
    :try_end_246
    .catchall {:try_start_20a .. :try_end_246} :catchall_250

    .line 484
    .end local v0    # "e":Ljava/net/ProtocolException;
    if-eqz v5, :cond_24b

    .line 485
    :goto_248
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 488
    :cond_24b
    invoke-direct {v1, v6}, Lcom/android/server/pm/CloudControlPreinstallService;->closeBufferedReader(Ljava/io/BufferedReader;)V

    .line 489
    nop

    .line 491
    return-object v2

    .line 484
    :catchall_250
    move-exception v0

    :goto_251
    if-eqz v5, :cond_256

    .line 485
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 488
    :cond_256
    invoke-direct {v1, v6}, Lcom/android/server/pm/CloudControlPreinstallService;->closeBufferedReader(Ljava/io/BufferedReader;)V

    throw v0
.end method

.method private isNetworkConnected(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 306
    const/4 v0, 0x0

    .line 309
    .local v0, "isAvailable":Z
    :try_start_1
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 310
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 312
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1b

    .line 313
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/CloudControlPreinstallService;->mNetworkType:Ljava/lang/String;

    .line 314
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    move v0, v3

    goto :goto_1f

    .line 316
    :cond_1b
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/pm/CloudControlPreinstallService;->mNetworkType:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    .line 321
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_1f
    goto :goto_24

    .line 319
    :catch_20
    move-exception v1

    .line 320
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 323
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_24
    return v0
.end method

.method public static isProvisioned(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 589
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 590
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, 0x1

    nop

    :cond_f
    return v2
.end method

.method public static startCloudControlService()V
    .registers 2

    .line 331
    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    .line 333
    .local v0, "systemServiceManager":Lcom/android/server/SystemServiceManager;
    const-class v1, Lcom/android/server/pm/CloudControlPreinstallService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 334
    return-void
.end method

.method public static trackSystem(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/pm/CloudControlPreinstallService$Action;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/android/server/pm/CloudControlPreinstallService$Action;

    .line 196
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.analytics"

    const-string v2, "com.miui.analytics.EventService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string/jumbo v1, "key"

    if-eqz p1, :cond_13

    move-object v2, p1

    goto :goto_15

    :cond_13
    const-string v2, ""

    :goto_15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "content"

    invoke-virtual {p2}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->getContent()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v1, "CloudControlPreinstall"

    invoke-virtual {p2}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->getContent()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v1, "extra"

    invoke-virtual {p2}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v1, "appid"

    const-string v2, "com.xiaomi.preload"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_51

    .line 207
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_5a

    .line 205
    :catch_51
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CloudControlPreinstall"

    const-string/jumbo v2, "track system error!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5a
    return-void
.end method

.method private uninstallAppsUpdateList(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;",
            ">;)V"
        }
    .end annotation

    .line 506
    .local p1, "uninstallApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;>;"
    if-eqz p1, :cond_ef

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_ef

    .line 511
    :cond_a
    const-string/jumbo v0, "ro.miui.cust_variant"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "currentCustVariant":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/CloudControlPreinstallService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 515
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_1c

    return-void

    .line 518
    :cond_1c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;

    .line 519
    .local v3, "app":Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;
    iget-object v5, v3, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->custVariant:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 521
    const-string/jumbo v5, "remove_from_list_begin"

    invoke-virtual {p0, v5, v3}, Lcom/android/server/pm/CloudControlPreinstallService;->trackEvent(Ljava/lang/String;Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;)V

    .line 522
    iget-object v5, v3, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/pm/PreinstallApp;->removeFromPreinstallList(Ljava/lang/String;)V

    .line 525
    :try_start_40
    iget-object v5, v3, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v4, v6}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_46} :catch_47

    .line 529
    goto :goto_6c

    .line 527
    :catch_47
    move-exception v4

    .line 528
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "CloudControlPreinstall"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disable Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " failed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .end local v3    # "app":Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6c
    :goto_6c
    goto :goto_20

    .line 534
    :cond_6d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_71
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ee

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;

    .line 535
    .restart local v3    # "app":Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;
    iget-object v5, v3, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->custVariant:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ed

    .line 536
    iget-object v5, v3, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->packageName:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/android/server/pm/CloudControlPreinstallService;->exists(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b1

    .line 537
    const-string v5, "CloudControlPreinstall"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string/jumbo v5, "package_not_exist"

    invoke-virtual {p0, v5, v3}, Lcom/android/server/pm/CloudControlPreinstallService;->trackEvent(Ljava/lang/String;Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;)V

    goto :goto_ed

    .line 542
    :cond_b1
    :try_start_b1
    const-string v5, "begin_uninstall"

    invoke-virtual {p0, v5, v3}, Lcom/android/server/pm/CloudControlPreinstallService;->trackEvent(Ljava/lang/String;Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;)V

    .line 543
    iget-object v5, v3, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->packageName:Ljava/lang/String;

    new-instance v6, Lcom/android/server/pm/CloudControlPreinstallService$PackageDeleteObserver;

    invoke-direct {v6, p0, v3}, Lcom/android/server/pm/CloudControlPreinstallService$PackageDeleteObserver;-><init>(Lcom/android/server/pm/CloudControlPreinstallService;Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;)V

    invoke-virtual {v1, v5, v6, v4}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_c0} :catch_c1

    .line 548
    goto :goto_ed

    .line 544
    :catch_c1
    move-exception v5

    .line 545
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "CloudControlPreinstall"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uninstall Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " failed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string/jumbo v6, "uninstall_failed"

    invoke-virtual {p0, v6, v3}, Lcom/android/server/pm/CloudControlPreinstallService;->trackEvent(Ljava/lang/String;Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;)V

    .line 551
    .end local v3    # "app":Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_ed
    :goto_ed
    goto :goto_71

    .line 552
    :cond_ee
    return-void

    .line 507
    .end local v0    # "currentCustVariant":Ljava/lang/String;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_ef
    :goto_ef
    const-string/jumbo v0, "uninstall_list_empty"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/CloudControlPreinstallService;->trackEvent(Ljava/lang/String;)V

    .line 508
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 5
    .param p1, "phase"    # I

    .line 343
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_19

    .line 345
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.miui.clause_agreed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/server/pm/CloudControlPreinstallService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/CloudControlPreinstallService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 349
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_19
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 338
    const-string v0, "CloudControlPreinstall"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void
.end method

.method public trackEvent(Ljava/lang/String;)V
    .registers 5
    .param p1, "event"    # Ljava/lang/String;

    .line 186
    new-instance v0, Lcom/android/server/pm/CloudControlPreinstallService$Action;

    invoke-direct {v0}, Lcom/android/server/pm/CloudControlPreinstallService$Action;-><init>()V

    .line 187
    .local v0, "action":Lcom/android/server/pm/CloudControlPreinstallService$Action;
    const-string/jumbo v1, "preload_event"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/CloudControlPreinstallService$Action;

    .line 189
    const-string v1, "imeiMd5"

    iget-object v2, p0, Lcom/android/server/pm/CloudControlPreinstallService;->mImeiMe5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/CloudControlPreinstallService$Action;

    .line 190
    const-string/jumbo v1, "networkType"

    iget-object v2, p0, Lcom/android/server/pm/CloudControlPreinstallService;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/CloudControlPreinstallService$Action;

    .line 191
    invoke-virtual {p0}, Lcom/android/server/pm/CloudControlPreinstallService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "preload_appoffine"

    invoke-static {v1, v2, v0}, Lcom/android/server/pm/CloudControlPreinstallService;->trackSystem(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/pm/CloudControlPreinstallService$Action;)V

    .line 192
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;)V
    .registers 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "app"    # Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;

    .line 170
    new-instance v0, Lcom/android/server/pm/CloudControlPreinstallService$Action;

    invoke-direct {v0}, Lcom/android/server/pm/CloudControlPreinstallService$Action;-><init>()V

    .line 171
    .local v0, "action":Lcom/android/server/pm/CloudControlPreinstallService$Action;
    const-string/jumbo v1, "preload_event"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/CloudControlPreinstallService$Action;

    .line 172
    const-string/jumbo v1, "packageName"

    iget-object v2, p2, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/CloudControlPreinstallService$Action;

    .line 173
    const-string v1, "confId"

    iget v2, p2, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->confId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->addParam(Ljava/lang/String;I)Lcom/android/server/pm/CloudControlPreinstallService$Action;

    .line 174
    const-string/jumbo v1, "offlineCount"

    iget v2, p2, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->offlineCount:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->addParam(Ljava/lang/String;I)Lcom/android/server/pm/CloudControlPreinstallService$Action;

    .line 175
    const-string/jumbo v1, "isPreinstalled"

    iget-object v2, p2, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lmiui/os/MiuiInit;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/CloudControlPreinstallService$Action;

    .line 176
    const-string/jumbo v1, "miuiChannelPath"

    iget-object v2, p2, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lmiui/os/MiuiInit;->getMiuiChannelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/CloudControlPreinstallService$Action;

    .line 178
    const-string v1, "imeiMd5"

    iget-object v2, p0, Lcom/android/server/pm/CloudControlPreinstallService;->mImeiMe5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/CloudControlPreinstallService$Action;

    .line 179
    const-string/jumbo v1, "networkType"

    iget-object v2, p0, Lcom/android/server/pm/CloudControlPreinstallService;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/CloudControlPreinstallService$Action;

    .line 181
    invoke-virtual {p0}, Lcom/android/server/pm/CloudControlPreinstallService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "preload_appoffine"

    invoke-static {v1, v2, v0}, Lcom/android/server/pm/CloudControlPreinstallService;->trackSystem(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/pm/CloudControlPreinstallService$Action;)V

    .line 182
    return-void
.end method

.method public uninstallPreinstallApps()V
    .registers 2

    .line 353
    invoke-virtual {p0}, Lcom/android/server/pm/CloudControlPreinstallService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/CloudControlPreinstallService;->isProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 356
    :cond_b
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_10

    return-void

    .line 358
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/pm/CloudControlPreinstallService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/CloudControlPreinstallService;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    return-void

    .line 361
    :cond_1b
    new-instance v0, Lcom/android/server/pm/CloudControlPreinstallService$2;

    invoke-direct {v0, p0}, Lcom/android/server/pm/CloudControlPreinstallService$2;-><init>(Lcom/android/server/pm/CloudControlPreinstallService;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 371
    return-void
.end method
