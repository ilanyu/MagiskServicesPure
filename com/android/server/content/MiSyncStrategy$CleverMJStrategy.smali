.class Lcom/android/server/content/MiSyncStrategy$CleverMJStrategy;
.super Ljava/lang/Object;
.source "MiSyncStrategy.java"

# interfaces
.implements Lcom/android/server/content/MiSyncStrategy$ISyncStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/MiSyncStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CleverMJStrategy"
.end annotation


# static fields
.field private static final ALLOW_FIRST_SYNC_THRESHOLD:I = 0x3

.field private static final ALLOW_FIRST_SYNC_THRESHOLD_FOR_BROWSER:I = 0x8

.field private static final AUTHORITY_BROWSER:Ljava/lang/String; = "com.miui.browser"

.field private static final AUTHORITY_CALENDAR:Ljava/lang/String; = "com.android.calendar"

.field private static final AUTHORITY_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field private static final AUTHORITY_GALLERY:Ljava/lang/String; = "com.miui.gallery.cloud.provider"

.field private static final AUTHORITY_NOTES:Ljava/lang/String; = "notes"

.field private static final REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 188
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/content/MiSyncStrategy$CleverMJStrategy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    .line 191
    sget-object v0, Lcom/android/server/content/MiSyncStrategy$CleverMJStrategy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    const-string v1, "com.android.calendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/android/server/content/MiSyncStrategy$CleverMJStrategy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    const-string/jumbo v1, "notes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/android/server/content/MiSyncStrategy$CleverMJStrategy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    const-string v1, "com.android.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/android/server/content/MiSyncStrategy$CleverMJStrategy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    const-string v1, "com.miui.gallery.cloud.provider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/content/MiSyncStrategy$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/content/MiSyncStrategy$1;

    .line 181
    invoke-direct {p0}, Lcom/android/server/content/MiSyncStrategy$CleverMJStrategy;-><init>()V

    return-void
.end method

.method private isFirstTimes(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 7
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 291
    const-string/jumbo v0, "key_num_syncs"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 293
    .local v0, "num":I
    const-string v2, "com.miui.browser"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    .line 294
    if-ltz v0, :cond_1e

    const/16 v2, 0x8

    if-ge v0, v2, :cond_1e

    .line 295
    return v3

    .line 298
    :cond_18
    if-ltz v0, :cond_1e

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1e

    .line 299
    return v3

    .line 302
    :cond_1e
    return v1
.end method


# virtual methods
.method public apply(Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;Landroid/app/job/JobInfo$Builder;)V
    .registers 7
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "builder"    # Landroid/app/job/JobInfo$Builder;

    .line 203
    const/4 v0, 0x3

    if-eqz p1, :cond_55

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-nez v1, :cond_8

    goto :goto_55

    .line 211
    :cond_8
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 212
    .local v1, "authority":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 213
    const-string v2, "Sync"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 214
    const-string v0, "Sync"

    const-string v2, "injector: apply: null parameter, return"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_21
    return-void

    .line 220
    :cond_22
    sget-object v2, Lcom/android/server/content/MiSyncStrategy$CleverMJStrategy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 221
    const-string v2, "Sync"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 222
    const-string v0, "Sync"

    const-string v2, "injector: apply: authority is not affected by strategy, return"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_39
    return-void

    .line 228
    :cond_3a
    invoke-direct {p0, v1, p2}, Lcom/android/server/content/MiSyncStrategy$CleverMJStrategy;->isFirstTimes(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 229
    const-string v2, "Sync"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 230
    const-string v0, "Sync"

    const-string v2, "injector: apply: first full sync, return"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_4f
    return-void

    .line 234
    :cond_50
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 235
    return-void

    .line 204
    .end local v1    # "authority":Ljava/lang/String;
    :cond_55
    :goto_55
    const-string v1, "Sync"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 205
    const-string v0, "Sync"

    const-string v1, "injector: apply: null parameter, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_64
    return-void
.end method

.method public isAllowedToRun(Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;)Z
    .registers 16
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 240
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eqz p1, :cond_8a

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-nez v2, :cond_a

    goto/16 :goto_8a

    .line 248
    :cond_a
    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 249
    .local v2, "authority":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 250
    const-string v3, "Sync"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 251
    const-string v1, "Sync"

    const-string v3, "injector: isAllowedToRun: null parameter, return true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_23
    return v0

    .line 257
    :cond_24
    sget-object v3, Lcom/android/server/content/MiSyncStrategy$CleverMJStrategy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 258
    const-string v3, "Sync"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 259
    const-string v1, "Sync"

    const-string v3, "injector: isAllowedToRun: authority is not affected by strategy, return true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_3b
    return v0

    .line 265
    :cond_3c
    invoke-direct {p0, v2, p2}, Lcom/android/server/content/MiSyncStrategy$CleverMJStrategy;->isFirstTimes(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 266
    const-string v3, "Sync"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 267
    const-string v1, "Sync"

    const-string v3, "injector: isAllowedToRun: first full sync, return true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_51
    return v0

    .line 272
    :cond_52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 273
    .local v3, "currentTimeMills":J
    const-string/jumbo v5, "key_interactive"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 275
    .local v5, "isInteractive":Z
    const-string/jumbo v6, "key_last_screen_off_time"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 277
    .local v6, "lastScreenOffTime":J
    const-string/jumbo v8, "key_battery_charging"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 279
    .local v8, "isBatteryCharging":Z
    if-eqz v8, :cond_88

    if-nez v5, :cond_88

    sub-long v9, v3, v6

    const-wide/32 v11, 0x1d4c0

    cmp-long v9, v9, v11

    if-lez v9, :cond_88

    .line 281
    const-string v9, "Sync"

    invoke-static {v9, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 282
    const-string v1, "Sync"

    const-string v9, "injector: isAllowedToRun: condition is satisfied, return true"

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_87
    return v0

    .line 287
    :cond_88
    const/4 v0, 0x0

    return v0

    .line 241
    .end local v2    # "authority":Ljava/lang/String;
    .end local v3    # "currentTimeMills":J
    .end local v5    # "isInteractive":Z
    .end local v6    # "lastScreenOffTime":J
    .end local v8    # "isBatteryCharging":Z
    :cond_8a
    :goto_8a
    const-string v2, "Sync"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 242
    const-string v1, "Sync"

    const-string v2, "injector: isAllowedToRun: null parameter, return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_99
    return v0
.end method
