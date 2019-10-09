.class public Lcom/miui/server/enterprise/APNManagerService;
.super Lcom/miui/enterprise/IAPNManager$Stub;
.source "APNManagerService.java"


# static fields
.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "APNManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/server/enterprise/APNManagerService;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Lcom/miui/enterprise/IAPNManager$Stub;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    .line 33
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 34
    return-void
.end method

.method private buildNameSelection(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildNumericAndNameSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/APNManagerService;->buildNameSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildNumericSelection(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "numeric"    # Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .registers 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 63
    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 64
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_b
    return-void
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .registers 4

    .line 37
    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getNumeric()Ljava/lang/String;
    .registers 6

    .line 53
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 54
    .local v0, "subId":I
    iget-object v1, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 55
    .local v1, "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v1, :cond_17

    const-string v2, ""

    goto :goto_21

    .line 56
    :cond_17
    iget-object v2, p0, Lcom/miui/server/enterprise/APNManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "mccmnc":Ljava/lang/String;
    :goto_21
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v3

    sget-object v4, Lmiui/telephony/TelephonyConstants;->PROPERTY_APN_SIM_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    return-object v2
.end method


# virtual methods
.method public activeAPN(Ljava/lang/String;)Z
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 453
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getNumeric()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "numeric":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto/16 :goto_9f

    .line 458
    :cond_18
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    .line 459
    invoke-direct {p0, v0, p1}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericAndNameSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string/jumbo v8, "name ASC"

    .line 458
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 462
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_80

    :try_start_32
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_80

    .line 463
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 464
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 465
    .local v3, "apnId":I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 466
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "apn_id"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/miui/server/enterprise/APNManagerService;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 469
    .local v5, "result":I
    const-string v6, "APNManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "active apn("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "), result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_32 .. :try_end_76} :catchall_7e

    .line 470
    if-lez v5, :cond_7a

    const/4 v2, 0x1

    nop

    .line 476
    :cond_7a
    invoke-direct {p0, v1}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    .line 470
    return v2

    .line 476
    .end local v3    # "apnId":I
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v5    # "result":I
    :catchall_7e
    move-exception v2

    goto :goto_9b

    .line 472
    :cond_80
    :try_start_80
    const-string v3, "APNManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_80 .. :try_end_96} :catchall_7e

    .line 473
    nop

    .line 476
    invoke-direct {p0, v1}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    .line 473
    return v2

    .line 476
    :goto_9b
    invoke-direct {p0, v1}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    throw v2

    .line 455
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_9f
    :goto_9f
    const-string v1, "APNManager"

    const-string/jumbo v3, "neither name or numeric can\'t be null"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return v2
.end method

.method public activeAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 429
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_8d

    .line 433
    :cond_13
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 434
    invoke-direct {p0, p1, p2}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericAndNameSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v6, "name ASC"

    .line 433
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 436
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_76

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_76

    .line 437
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 438
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 439
    .local v1, "apnId":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 440
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "apn_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 441
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/miui/server/enterprise/APNManagerService;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 443
    .local v3, "result":I
    const-string v4, "APNManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "active apn("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "), result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 445
    .end local v1    # "apnId":I
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "result":I
    goto :goto_8c

    .line 446
    :cond_76
    const-string v1, "APNManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :goto_8c
    return-void

    .line 430
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_8d
    :goto_8d
    const-string v0, "APNManager"

    const-string/jumbo v1, "neither name or numeric can\'t be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void
.end method

.method public addAPN(Lcom/miui/enterprise/sdk/APNConfig;)Z
    .registers 10
    .param p1, "config"    # Lcom/miui/enterprise/sdk/APNConfig;

    .line 249
    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 251
    iget-object v0, p1, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 252
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getNumeric()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "numeric":Ljava/lang/String;
    goto :goto_14

    .line 254
    .end local v0    # "numeric":Ljava/lang/String;
    :cond_12
    iget-object v0, p1, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    .line 256
    .restart local v0    # "numeric":Ljava/lang/String;
    :goto_14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 257
    const-string v1, "APNManager"

    const-string v3, "Invalidate numeric"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return v2

    .line 260
    :cond_23
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 261
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "name"

    iget-object v4, p1, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v3, "apn"

    iget-object v4, p1, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string/jumbo v3, "user"

    iget-object v4, p1, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string/jumbo v3, "password"

    iget-object v4, p1, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v3, "authtype"

    iget v4, p1, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    const-string v3, "bearer"

    iget v4, p1, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    const-string/jumbo v3, "mcc"

    iget-object v4, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_6e

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_70

    :cond_6e
    iget-object v4, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    :goto_70
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string/jumbo v3, "mnc"

    iget-object v4, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_84

    const/4 v4, 0x5

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_86

    :cond_84
    iget-object v4, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    :goto_86
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string/jumbo v3, "numeric"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v3, "read_only"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    iget v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_aa

    .line 274
    const-string v3, "carrier_enabled"

    iget v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    :cond_aa
    iget v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    if-eq v3, v5, :cond_b9

    .line 277
    const-string v3, "current"

    iget v5, p1, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    :cond_b9
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    if-eqz v3, :cond_c5

    .line 281
    const-string/jumbo v3, "mmsc"

    iget-object v5, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_c5
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    if-eqz v3, :cond_d1

    .line 285
    const-string/jumbo v3, "mmsport"

    iget-object v5, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_d1
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    if-eqz v3, :cond_dd

    .line 288
    const-string/jumbo v3, "mmsproxy"

    iget-object v5, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_dd
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    if-eqz v3, :cond_e9

    .line 290
    const-string/jumbo v3, "mvno_match_data"

    iget-object v5, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_e9
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    if-eqz v3, :cond_f5

    .line 292
    const-string/jumbo v3, "mvno_type"

    iget-object v5, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_f5
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    if-eqz v3, :cond_101

    .line 294
    const-string/jumbo v3, "port"

    iget-object v5, p1, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_101
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    if-eqz v3, :cond_10d

    .line 296
    const-string/jumbo v3, "protocol"

    iget-object v5, p1, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_10d
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    if-eqz v3, :cond_119

    .line 298
    const-string/jumbo v3, "proxy"

    iget-object v5, p1, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_119
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    if-eqz v3, :cond_125

    .line 300
    const-string/jumbo v3, "roaming_protocol"

    iget-object v5, p1, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_125
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    if-eqz v3, :cond_131

    .line 302
    const-string/jumbo v3, "server"

    iget-object v5, p1, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_131
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    if-eqz v3, :cond_13d

    .line 304
    const-string/jumbo v3, "sub_id"

    iget-object v5, p1, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_13d
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    if-eqz v3, :cond_149

    .line 306
    const-string/jumbo v3, "type"

    iget-object v5, p1, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_149
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 310
    .local v3, "uri":Landroid/net/Uri;
    const-string v5, "APNManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New apn config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    if-eqz v3, :cond_16d

    move v2, v4

    nop

    :cond_16d
    return v2
.end method

.method public addAPNForNumeric(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V
    .registers 8
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/miui/enterprise/sdk/APNConfig;

    .line 226
    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 228
    const-string v0, "APNManager"

    const-string v1, "Invalidate numeric"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void

    .line 231
    :cond_13
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "name"

    iget-object v2, p2, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "apn"

    iget-object v2, p2, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string/jumbo v1, "user"

    iget-object v2, p2, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string/jumbo v1, "password"

    iget-object v2, p2, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v1, "authtype"

    iget v2, p2, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string v1, "bearer"

    iget v2, p2, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string/jumbo v1, "mcc"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string/jumbo v1, "mnc"

    const/4 v2, 0x5

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string/jumbo v1, "numeric"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string/jumbo v1, "read_only"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 244
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "APNManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New apn config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method public deleteAPN(Ljava/lang/String;)Z
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 329
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getNumeric()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "numeric":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_47

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_47

    .line 334
    :cond_17
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 335
    invoke-direct {p0, v0, p1}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericAndNameSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 334
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 336
    .local v1, "count":I
    const-string v3, "APNManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete apn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "rows"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    if-lez v1, :cond_46

    const/4 v2, 0x1

    nop

    :cond_46
    return v2

    .line 331
    .end local v1    # "count":I
    :cond_47
    :goto_47
    const-string v1, "APNManager"

    const-string/jumbo v3, "neither name or numeric can\'t be null"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return v2
.end method

.method public deleteAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 317
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_3e

    .line 321
    :cond_12
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 322
    invoke-direct {p0, p1, p2}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericAndNameSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 321
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 323
    .local v0, "count":I
    const-string v1, "APNManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete apn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "rows"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void

    .line 318
    .end local v0    # "count":I
    :cond_3e
    :goto_3e
    const-string v0, "APNManager"

    const-string/jumbo v1, "neither name or numeric can\'t be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void
.end method

.method public editAPN(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)Z
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/miui/enterprise/sdk/APNConfig;

    .line 364
    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 366
    iget-object v0, p2, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 367
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getNumeric()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "numeric":Ljava/lang/String;
    goto :goto_14

    .line 369
    .end local v0    # "numeric":Ljava/lang/String;
    :cond_12
    iget-object v0, p2, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    .line 371
    .restart local v0    # "numeric":Ljava/lang/String;
    :goto_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_152

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto/16 :goto_152

    .line 375
    :cond_23
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 376
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "name"

    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v3, "apn"

    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string/jumbo v3, "user"

    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string/jumbo v3, "password"

    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v3, "authtype"

    iget v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    const-string v3, "bearer"

    iget v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 382
    const-string/jumbo v3, "mcc"

    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_6e

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_70

    :cond_6e
    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    :goto_70
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string/jumbo v3, "mnc"

    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_84

    const/4 v4, 0x5

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_86

    :cond_84
    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    :goto_86
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string/jumbo v3, "numeric"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9f

    .line 387
    const-string v3, "carrier_enabled"

    iget v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    :cond_9f
    iget v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    if-eq v3, v4, :cond_ae

    .line 390
    const-string v3, "current"

    iget v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 393
    :cond_ae
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    if-eqz v3, :cond_ba

    .line 394
    const-string/jumbo v3, "mmsc"

    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_ba
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    if-eqz v3, :cond_c6

    .line 398
    const-string/jumbo v3, "mmsport"

    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_c6
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    if-eqz v3, :cond_d2

    .line 401
    const-string/jumbo v3, "mmsproxy"

    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_d2
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    if-eqz v3, :cond_de

    .line 403
    const-string/jumbo v3, "mvno_match_data"

    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_de
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    if-eqz v3, :cond_ea

    .line 405
    const-string/jumbo v3, "mvno_type"

    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_ea
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    if-eqz v3, :cond_f6

    .line 407
    const-string/jumbo v3, "port"

    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_f6
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    if-eqz v3, :cond_102

    .line 409
    const-string/jumbo v3, "protocol"

    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_102
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    if-eqz v3, :cond_10e

    .line 411
    const-string/jumbo v3, "proxy"

    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_10e
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    if-eqz v3, :cond_11a

    .line 413
    const-string/jumbo v3, "roaming_protocol"

    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_11a
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    if-eqz v3, :cond_126

    .line 415
    const-string/jumbo v3, "server"

    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_126
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    if-eqz v3, :cond_132

    .line 417
    const-string/jumbo v3, "sub_id"

    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_132
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    if-eqz v3, :cond_13e

    .line 419
    const-string/jumbo v3, "type"

    iget-object v4, p2, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_13e
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 422
    invoke-direct {p0, v0, p1}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericAndNameSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 421
    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 423
    .local v3, "count":I
    if-lez v3, :cond_151

    const/4 v2, 0x1

    nop

    :cond_151
    return v2

    .line 372
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v3    # "count":I
    :cond_152
    :goto_152
    const-string v1, "APNManager"

    const-string/jumbo v3, "neither name or numeric can\'t be null"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return v2
.end method

.method public editAPNForNumeric(Ljava/lang/String;Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V
    .registers 9
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/miui/enterprise/sdk/APNConfig;

    .line 342
    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 343
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_96

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_96

    .line 347
    :cond_13
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 348
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "name"

    iget-object v2, p3, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v1, "apn"

    iget-object v2, p3, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string/jumbo v1, "user"

    iget-object v2, p3, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string/jumbo v1, "password"

    iget-object v2, p3, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v1, "authtype"

    iget v2, p3, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    const-string v1, "bearer"

    iget v2, p3, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    const-string/jumbo v1, "mcc"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string/jumbo v1, "mnc"

    const/4 v2, 0x5

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string/jumbo v1, "numeric"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 358
    invoke-direct {p0, p1, p2}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericAndNameSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 357
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 359
    .local v1, "count":I
    const-string v2, "APNManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update apn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rows"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void

    .line 344
    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v1    # "count":I
    :cond_96
    :goto_96
    const-string v0, "APNManager"

    const-string/jumbo v1, "neither name or numeric can\'t be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method public getAPN(Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;
    .registers 30
    .param p1, "name"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 177
    iget-object v0, v1, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/miui/server/enterprise/APNManagerService;->getNumeric()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "numeric":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "name"

    const-string v6, "apn"

    const-string/jumbo v7, "user"

    const-string/jumbo v8, "password"

    const-string v9, "authtype"

    const-string v10, "bearer"

    const-string/jumbo v11, "mcc"

    const-string/jumbo v12, "mnc"

    const-string/jumbo v13, "numeric"

    const-string v14, "carrier_enabled"

    const-string v15, "current"

    const-string/jumbo v16, "mmsc"

    const-string/jumbo v17, "mmsport"

    const-string/jumbo v18, "mmsproxy"

    const-string/jumbo v19, "mvno_match_data"

    const-string/jumbo v20, "mvno_type"

    const-string/jumbo v21, "port"

    const-string/jumbo v22, "protocol"

    const-string/jumbo v23, "proxy"

    const-string/jumbo v24, "roaming_protocol"

    const-string/jumbo v25, "server"

    const-string/jumbo v26, "sub_id"

    const-string/jumbo v27, "type"

    filled-new-array/range {v5 .. v27}, [Ljava/lang/String;

    move-result-object v5

    .line 186
    move-object/from16 v9, p1

    invoke-direct {v1, v2, v9}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericAndNameSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "name ASC"

    .line 179
    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v3, v0

    .line 189
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_12e

    :try_start_66
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_12e

    .line 190
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 191
    new-instance v0, Lcom/miui/enterprise/sdk/APNConfig;

    invoke-direct {v0}, Lcom/miui/enterprise/sdk/APNConfig;-><init>()V

    .line 192
    .local v0, "configItem":Lcom/miui/enterprise/sdk/APNConfig;
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    .line 193
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    .line 194
    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    .line 195
    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    .line 196
    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    .line 197
    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    .line 198
    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    .line 199
    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    .line 200
    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    .line 201
    const/16 v4, 0x9

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    .line 202
    const/16 v4, 0xa

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    .line 203
    const/16 v4, 0xb

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    .line 204
    const/16 v4, 0xc

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    .line 205
    const/16 v4, 0xd

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    .line 206
    const/16 v4, 0xe

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    .line 207
    const/16 v4, 0xf

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    .line 208
    const/16 v4, 0x10

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    .line 209
    const/16 v4, 0x11

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    .line 210
    const/16 v4, 0x12

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    .line 211
    const/16 v4, 0x13

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    .line 212
    const/16 v4, 0x14

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    .line 213
    const/16 v4, 0x15

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    .line 214
    const/16 v4, 0x16

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;
    :try_end_124
    .catchall {:try_start_66 .. :try_end_124} :catchall_129

    .line 215
    nop

    .line 220
    invoke-direct {v1, v3}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    .line 215
    return-object v0

    .line 220
    .end local v0    # "configItem":Lcom/miui/enterprise/sdk/APNConfig;
    :catchall_129
    move-exception v0

    invoke-direct {v1, v3}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    .line 217
    :cond_12e
    const/4 v0, 0x0

    .line 220
    invoke-direct {v1, v3}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    .line 217
    return-object v0
.end method

.method public getAPNActiveMode()I
    .registers 4

    .line 497
    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 498
    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_apn_switch_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;
    .registers 12
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 152
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "name"

    const-string v4, "apn"

    const-string/jumbo v5, "user"

    const-string/jumbo v6, "password"

    const-string v7, "authtype"

    const-string v8, "bearer"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericAndNameSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "name ASC"

    .line 152
    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 157
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_6e

    :try_start_2c
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6e

    .line 158
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 159
    new-instance v1, Lcom/miui/enterprise/sdk/APNConfig;

    invoke-direct {v1}, Lcom/miui/enterprise/sdk/APNConfig;-><init>()V

    .line 160
    .local v1, "configItem":Lcom/miui/enterprise/sdk/APNConfig;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    .line 161
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    .line 162
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    .line 163
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    .line 164
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    .line 165
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I
    :try_end_64
    .catchall {:try_start_2c .. :try_end_64} :catchall_69

    .line 166
    nop

    .line 171
    invoke-direct {p0, v0}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    .line 166
    return-object v1

    .line 171
    .end local v1    # "configItem":Lcom/miui/enterprise/sdk/APNConfig;
    :catchall_69
    move-exception v1

    invoke-direct {p0, v0}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    throw v1

    .line 168
    :cond_6e
    const/4 v1, 0x0

    .line 171
    invoke-direct {p0, v0}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    .line 168
    return-object v1
.end method

.method public getAPNList()Ljava/util/List;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/enterprise/sdk/APNConfig;",
            ">;"
        }
    .end annotation

    .line 99
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 100
    invoke-direct/range {p0 .. p0}, Lcom/miui/server/enterprise/APNManagerService;->getNumeric()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "numeric":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "name"

    const-string v6, "apn"

    const-string/jumbo v7, "user"

    const-string/jumbo v8, "password"

    const-string v9, "authtype"

    const-string v10, "bearer"

    const-string/jumbo v11, "mcc"

    const-string/jumbo v12, "mnc"

    const-string/jumbo v13, "numeric"

    const-string v14, "carrier_enabled"

    const-string v15, "current"

    const-string/jumbo v16, "mmsc"

    const-string/jumbo v17, "mmsport"

    const-string/jumbo v18, "mmsproxy"

    const-string/jumbo v19, "mvno_match_data"

    const-string/jumbo v20, "mvno_type"

    const-string/jumbo v21, "port"

    const-string/jumbo v22, "protocol"

    const-string/jumbo v23, "proxy"

    const-string/jumbo v24, "roaming_protocol"

    const-string/jumbo v25, "server"

    const-string/jumbo v26, "sub_id"

    const-string/jumbo v27, "type"

    filled-new-array/range {v5 .. v27}, [Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-direct {v1, v2}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "name ASC"

    .line 101
    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 109
    .local v3, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 111
    .local v4, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/enterprise/sdk/APNConfig;>;"
    if-eqz v3, :cond_14e

    .line 112
    :try_start_69
    const-string v0, "APNManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query result size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 114
    :goto_86
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_14e

    .line 115
    new-instance v0, Lcom/miui/enterprise/sdk/APNConfig;

    invoke-direct {v0}, Lcom/miui/enterprise/sdk/APNConfig;-><init>()V

    .line 116
    .local v0, "configItem":Lcom/miui/enterprise/sdk/APNConfig;
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    .line 117
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    .line 118
    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    .line 119
    const/4 v5, 0x3

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    .line 120
    const/4 v5, 0x4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    .line 121
    const/4 v5, 0x5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    .line 122
    const/4 v5, 0x6

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    .line 123
    const/4 v5, 0x7

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    .line 124
    const/16 v5, 0x8

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    .line 125
    const/16 v5, 0x9

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    .line 126
    const/16 v5, 0xa

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    .line 127
    const/16 v5, 0xb

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    .line 128
    const/16 v5, 0xc

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    .line 129
    const/16 v5, 0xd

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    .line 130
    const/16 v5, 0xe

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    .line 131
    const/16 v5, 0xf

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    .line 132
    const/16 v5, 0x10

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    .line 133
    const/16 v5, 0x11

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    .line 134
    const/16 v5, 0x12

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    .line 135
    const/16 v5, 0x13

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    .line 136
    const/16 v5, 0x14

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    .line 137
    const/16 v5, 0x15

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    .line 138
    const/16 v5, 0x16

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    .line 139
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_147
    .catchall {:try_start_69 .. :try_end_147} :catchall_149

    .line 141
    .end local v0    # "configItem":Lcom/miui/enterprise/sdk/APNConfig;
    goto/16 :goto_86

    .line 144
    :catchall_149
    move-exception v0

    invoke-direct {v1, v3}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    :cond_14e
    invoke-direct {v1, v3}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    .line 145
    nop

    .line 146
    return-object v4
.end method

.method public getAPNListForNumeric(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "numeric"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/enterprise/sdk/APNConfig;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 71
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "name"

    const-string v4, "apn"

    const-string/jumbo v5, "user"

    const-string/jumbo v6, "password"

    const-string v7, "authtype"

    const-string v8, "bearer"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-direct {p0, p1}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "name ASC"

    .line 71
    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 74
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/enterprise/sdk/APNConfig;>;"
    if-eqz v0, :cond_8f

    .line 77
    :try_start_31
    const-string v2, "APNManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query result size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 79
    :goto_4e
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_8f

    .line 80
    new-instance v2, Lcom/miui/enterprise/sdk/APNConfig;

    invoke-direct {v2}, Lcom/miui/enterprise/sdk/APNConfig;-><init>()V

    .line 81
    .local v2, "configItem":Lcom/miui/enterprise/sdk/APNConfig;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    .line 82
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    .line 83
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    .line 84
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    .line 85
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    .line 86
    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    .line 87
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_89
    .catchall {:try_start_31 .. :try_end_89} :catchall_8a

    .line 89
    .end local v2    # "configItem":Lcom/miui/enterprise/sdk/APNConfig;
    goto :goto_4e

    .line 92
    :catchall_8a
    move-exception v2

    invoke-direct {p0, v0}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    throw v2

    :cond_8f
    invoke-direct {p0, v0}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    .line 93
    nop

    .line 94
    return-object v1
.end method

.method public queryApn(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "selections"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 503
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "name"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "name ASC"

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 505
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1b
    if-eqz v0, :cond_31

    :try_start_1d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 508
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_2c

    goto :goto_1b

    .line 511
    :catchall_2c
    move-exception v2

    invoke-direct {p0, v0}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    throw v2

    :cond_31
    invoke-direct {p0, v0}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    .line 512
    nop

    .line 513
    return-object v1
.end method

.method public resetAPN()Z
    .registers 5

    .line 482
    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 483
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 484
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "apn_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/server/enterprise/APNManagerService;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 486
    .local v1, "result":I
    if-lez v1, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    return v2
.end method

.method public setAPNActiveMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 491
    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 492
    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_apn_switch_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 493
    return-void
.end method
