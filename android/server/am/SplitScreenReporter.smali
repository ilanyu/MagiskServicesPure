.class public Landroid/server/am/SplitScreenReporter;
.super Ljava/lang/Object;
.source "SplitScreenReporter.java"


# static fields
.field public static final ACTION_ENTER_SPLIT:Ljava/lang/String; = "1"

.field public static final ACTION_EXIT_SPLIT:Ljava/lang/String; = "2"

.field public static final STR_ACTION:Ljava/lang/String; = "action"

.field public static final STR_DEAL_TIME:Ljava/lang/String; = "time"

.field public static final STR_PKG:Ljava/lang/String; = "pkg"

.field public static final STR_SDK:Ljava/lang/String; = "sdk"

.field private static final TAG:Ljava/lang/String; = "SplitScreenReporter"

.field private static time:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/server/am/SplitScreenReporter;->time:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkIsMonkey()Z
    .registers 1

    .line 77
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method private static getBaseJson()Lorg/json/JSONObject;
    .registers 3

    .line 64
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 66
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "action"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string/jumbo v1, "pkg"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string/jumbo v1, "time"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string/jumbo v1, "sdk"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_24} :catch_25

    .line 72
    goto :goto_29

    .line 70
    :catch_25
    move-exception v1

    .line 71
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 73
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_29
    return-object v0
.end method

.method private static report(Lorg/json/JSONObject;)V
    .registers 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 29
    invoke-static {}, Landroid/server/am/SplitScreenReporter;->checkIsMonkey()Z

    move-result v0

    if-nez v0, :cond_38

    .line 30
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    const-string/jumbo v1, "multiWindow"

    .line 31
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mqs_zjy_android_split_screen_12271000"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportEventV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    const-string v0, "SplitScreenReporter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground excuted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "reportEventV2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_38
    return-void
.end method

.method public static reportEnterSplitScreen(Ljava/lang/String;)V
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;

    .line 38
    :try_start_0
    invoke-static {}, Landroid/server/am/SplitScreenReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 39
    .local v0, "baseJson":Lorg/json/JSONObject;
    const-string v1, "action"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-static {v0}, Landroid/server/am/SplitScreenReporter;->report(Lorg/json/JSONObject;)V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Landroid/server/am/SplitScreenReporter;->time:J
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 45
    .end local v0    # "baseJson":Lorg/json/JSONObject;
    goto :goto_1f

    .line 43
    :catch_1b
    move-exception v0

    .line 44
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 46
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1f
    return-void
.end method

.method public static reportExitSplitScreen(Ljava/lang/String;)V
    .registers 10
    .param p0, "pkg"    # Ljava/lang/String;

    .line 50
    :try_start_0
    invoke-static {}, Landroid/server/am/SplitScreenReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 51
    .local v0, "baseJson":Lorg/json/JSONObject;
    const-string v1, "action"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    sget-wide v1, Landroid/server/am/SplitScreenReporter;->time:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_37

    .line 54
    const-string/jumbo v1, "time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Landroid/server/am/SplitScreenReporter;->time:J

    sub-long/2addr v5, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    :cond_37
    invoke-static {v0}, Landroid/server/am/SplitScreenReporter;->report(Lorg/json/JSONObject;)V

    .line 57
    sput-wide v3, Landroid/server/am/SplitScreenReporter;->time:J
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 60
    .end local v0    # "baseJson":Lorg/json/JSONObject;
    goto :goto_41

    .line 58
    :catch_3d
    move-exception v0

    .line 59
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 61
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_41
    return-void
.end method
