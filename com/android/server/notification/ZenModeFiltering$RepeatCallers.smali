.class Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
.super Ljava/lang/Object;
.source "ZenModeFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RepeatCallers"
.end annotation


# instance fields
.field private final mCalls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThresholdMinutes:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeFiltering$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/notification/ZenModeFiltering$1;

    .line 281
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    .line 281
    iget v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    .line 281
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/os/Bundle;

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->isRepeat(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/os/Bundle;

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->recordCall(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method private declared-synchronized cleanUp(Landroid/util/ArrayMap;J)V
    .registers 12
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .local p1, "calls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-enter p0

    .line 307
    :try_start_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 308
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_2c

    .line 309
    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 310
    .local v2, "time":J
    cmp-long v4, v2, p2

    if-gtz v4, :cond_26

    sub-long v4, p2, v2

    iget v6, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    mul-int/lit16 v6, v6, 0x3e8

    mul-int/lit8 v6, v6, 0x3c

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_29

    .line 311
    :cond_26
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2e

    .line 308
    .end local v2    # "time":J
    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 314
    .end local v1    # "i":I
    :cond_2c
    monitor-exit p0

    return-void

    .line 306
    .end local v0    # "N":I
    .end local p1    # "calls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local p2    # "now":J
    :catchall_2e
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    throw p1
.end method

.method private declared-synchronized isRepeat(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 297
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->setThresholdMinutes(Landroid/content/Context;)V

    .line 298
    iget v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    const/4 v1, 0x0

    if-lez v0, :cond_25

    if-nez p2, :cond_c

    goto :goto_25

    .line 299
    :cond_c
    invoke-static {p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->peopleString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_27

    .line 300
    .local v0, "peopleString":Ljava/lang/String;
    if-nez v0, :cond_14

    monitor-exit p0

    return v1

    .line 301
    :cond_14
    :try_start_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 302
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    .line 303
    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_27

    monitor-exit p0

    return v3

    .line 298
    .end local v0    # "peopleString":Ljava/lang/String;
    .end local v1    # "now":J
    :cond_25
    :goto_25
    monitor-exit p0

    return v1

    .line 296
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "extras":Landroid/os/Bundle;
    :catchall_27
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    throw p1
.end method

.method private static peopleString(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 7
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 324
    invoke-static {p0}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "extraPeople":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_41

    array-length v2, v0

    if-nez v2, :cond_b

    goto :goto_41

    .line 326
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    array-length v4, v0

    if-ge v3, v4, :cond_35

    .line 328
    aget-object v4, v0, v3

    .line 329
    .local v4, "extraPerson":Ljava/lang/String;
    if-nez v4, :cond_19

    .end local v4    # "extraPerson":Ljava/lang/String;
    goto :goto_32

    .line 330
    .restart local v4    # "extraPerson":Ljava/lang/String;
    :cond_19
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_24

    .end local v4    # "extraPerson":Ljava/lang/String;
    goto :goto_32

    .line 332
    .restart local v4    # "extraPerson":Ljava/lang/String;
    :cond_24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2f

    .line 333
    const/16 v5, 0x7c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    :cond_2f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .end local v4    # "extraPerson":Ljava/lang/String;
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 337
    .end local v3    # "i":I
    :cond_35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_40

    :cond_3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_40
    return-object v1

    .line 325
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_41
    :goto_41
    return-object v1
.end method

.method private declared-synchronized recordCall(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 287
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->setThresholdMinutes(Landroid/content/Context;)V

    .line 288
    iget v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    if-lez v0, :cond_27

    if-nez p2, :cond_b

    goto :goto_27

    .line 289
    :cond_b
    invoke-static {p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->peopleString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_29

    .line 290
    .local v0, "peopleString":Ljava/lang/String;
    if-nez v0, :cond_13

    monitor-exit p0

    return-void

    .line 291
    :cond_13
    :try_start_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 292
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    .line 293
    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_29

    .line 294
    monitor-exit p0

    return-void

    .line 288
    .end local v0    # "peopleString":Ljava/lang/String;
    .end local v1    # "now":J
    :cond_27
    :goto_27
    monitor-exit p0

    return-void

    .line 286
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "extras":Landroid/os/Bundle;
    :catchall_29
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    throw p1
.end method

.method private setThresholdMinutes(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 317
    iget v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    if-gtz v0, :cond_11

    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    .line 321
    :cond_11
    return-void
.end method
