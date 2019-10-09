.class Lcom/android/server/location/GnssSatelliteBlacklistHelper;
.super Ljava/lang/Object;
.source "GnssSatelliteBlacklistHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;
    }
.end annotation


# static fields
.field private static final BLACKLIST_DELIMITER:Ljava/lang/String; = ","

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssBlacklistHelper"


# instance fields
.field private final mCallback:Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    const-string v0, "GnssBlacklistHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->mContext:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->mCallback:Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;

    .line 37
    new-instance v0, Lcom/android/server/location/GnssSatelliteBlacklistHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GnssSatelliteBlacklistHelper$1;-><init>(Lcom/android/server/location/GnssSatelliteBlacklistHelper;Landroid/os/Handler;)V

    .line 43
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gnss_satellite_blacklist"

    .line 44
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 43
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 48
    return-void
.end method

.method static parseSatelliteBlacklist(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p0, "blacklist"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 88
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "strings":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .local v1, "parsed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_37

    aget-object v4, v0, v3

    .line 91
    .local v4, "string":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 92
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    .line 93
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 94
    .local v5, "value":I
    if-ltz v5, :cond_2c

    .line 97
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4    # "string":Ljava/lang/String;
    .end local v5    # "value":I
    goto :goto_34

    .line 95
    .restart local v4    # "string":Ljava/lang/String;
    .restart local v5    # "value":I
    :cond_2c
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Negative value is invalid."

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    .end local v4    # "string":Ljava/lang/String;
    .end local v5    # "value":I
    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 100
    :cond_37
    return-object v1
.end method


# virtual methods
.method updateSatelliteBlacklist()V
    .registers 10

    .line 51
    iget-object v0, p0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 52
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "gnss_satellite_blacklist"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "blacklist":Ljava/lang/String;
    if-nez v1, :cond_10

    .line 56
    const-string v1, ""

    .line 58
    :cond_10
    sget-boolean v2, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->DEBUG:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_25

    .line 59
    const-string v2, "GnssBlacklistHelper"

    const-string v5, "Update GNSS satellite blacklist: %s"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_25
    :try_start_25
    invoke-static {v1}, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->parseSatelliteBlacklist(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_29} :catch_6e

    .line 68
    .local v2, "blacklistValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    nop

    .line 67
    nop

    .line 70
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3b

    .line 71
    const-string v3, "GnssBlacklistHelper"

    const-string v4, "blacklist string has odd number of values.Aborting updateSatelliteBlacklist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 76
    :cond_3b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 77
    .local v5, "length":I
    new-array v6, v5, [I

    .line 78
    .local v6, "constellations":[I
    new-array v7, v5, [I

    .line 79
    .local v7, "svids":[I
    nop

    .local v3, "i":I
    :goto_46
    if-ge v3, v5, :cond_68

    .line 80
    mul-int/lit8 v8, v3, 0x2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v3

    .line 81
    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v4

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v3

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 83
    .end local v3    # "i":I
    :cond_68
    iget-object v3, p0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->mCallback:Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;

    invoke-interface {v3, v6, v7}, Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;->onUpdateSatelliteBlacklist([I[I)V

    .line 84
    return-void

    .line 65
    .end local v2    # "blacklistValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "length":I
    .end local v6    # "constellations":[I
    .end local v7    # "svids":[I
    :catch_6e
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "GnssBlacklistHelper"

    const-string v4, "Exception thrown when parsing blacklist string."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    return-void
.end method
