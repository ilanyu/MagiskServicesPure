.class public Lcom/android/server/devicepolicy/DevicePolicyConstants;
.super Ljava/lang/Object;
.source "DevicePolicyConstants.java"


# static fields
.field private static final DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE_KEY:Ljava/lang/String; = "das_died_service_reconnect_backoff_increase"

.field private static final DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC_KEY:Ljava/lang/String; = "das_died_service_reconnect_backoff_sec"

.field private static final DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC_KEY:Ljava/lang/String; = "das_died_service_reconnect_max_backoff_sec"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManager"


# instance fields
.field public final DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE:D

.field public final DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC:J

.field public final DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC:J


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 11
    .param p1, "settings"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 62
    .local v0, "parser":Landroid/util/KeyValueListParser;
    :try_start_a
    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_d} :catch_e

    .line 67
    goto :goto_25

    .line 63
    :catch_e
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "DevicePolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad device policy settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_25
    const-string v1, "das_died_service_reconnect_backoff_sec"

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 70
    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    .line 69
    invoke-virtual {v0, v1, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 72
    .local v1, "dasDiedServiceReconnectBackoffSec":J
    const-string v5, "das_died_service_reconnect_backoff_increase"

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v0, v5, v6}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v5

    float-to-double v5, v5

    .line 75
    .local v5, "dasDiedServiceReconnectBackoffIncrease":D
    const-string v7, "das_died_service_reconnect_max_backoff_sec"

    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 76
    invoke-virtual {v8, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    .line 75
    invoke-virtual {v0, v7, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 79
    .local v3, "dasDiedServiceReconnectMaxBackoffSec":J
    const-wide/16 v7, 0x5

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 82
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 83
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    .line 86
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 89
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC:J

    .line 90
    iput-wide v5, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE:D

    .line 91
    iput-wide v3, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    .line 93
    return-void
.end method

.method public static loadFromString(Ljava/lang/String;)Lcom/android/server/devicepolicy/DevicePolicyConstants;
    .registers 2
    .param p0, "settings"    # Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyConstants;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyConstants;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 100
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    const-string v0, "Constants:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    const-string v0, "  DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 107
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    const-string v0, "  DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE:D

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(D)V

    .line 111
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    const-string v0, "  DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 114
    return-void
.end method
