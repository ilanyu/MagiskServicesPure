.class Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;
.super Ljava/lang/Object;
.source "SyncManagerAccountChangePolicy.java"

# interfaces
.implements Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManagerAccountChangePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSyncDataStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/content/SyncManagerAccountChangePolicy$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/content/SyncManagerAccountChangePolicy$1;

    .line 156
    invoke-direct {p0}, Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public isSyncForbidden(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 159
    const-string/jumbo v0, "num_syncs"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 161
    .local v0, "num":I
    const-string v1, "com.miui.browser"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 162
    if-ltz v0, :cond_1e

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1e

    .line 163
    return v2

    .line 166
    :cond_18
    if-ltz v0, :cond_1e

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1e

    .line 167
    return v2

    .line 171
    :cond_1e
    const-string v1, "interactive"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 172
    .local v1, "isInteractive":Z
    const/4 v3, 0x1

    if-eqz v1, :cond_28

    .line 173
    return v3

    .line 175
    :cond_28
    const-string/jumbo v4, "last_screen_off_time"

    const-wide/16 v5, 0x0

    invoke-virtual {p3, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 176
    .local v4, "lastScreenOffTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/32 v8, 0x1d4c0

    cmp-long v6, v6, v8

    if-gez v6, :cond_3e

    .line 177
    return v3

    .line 179
    :cond_3e
    const-string v6, "battery_charging"

    invoke-virtual {p3, v6, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 180
    .local v6, "isBatteryCharging":Z
    if-nez v6, :cond_47

    .line 181
    return v3

    .line 183
    :cond_47
    return v2
.end method
