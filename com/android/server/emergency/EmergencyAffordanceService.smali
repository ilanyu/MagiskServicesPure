.class public Lcom/android/server/emergency/EmergencyAffordanceService;
.super Lcom/android/server/SystemService;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    }
.end annotation


# static fields
.field private static final CELL_INFO_STATE_CHANGED:I = 0x2

.field private static final EMERGENCY_SIM_INSERTED_SETTING:Ljava/lang/String; = "emergency_sim_inserted_before"

.field private static final INITIALIZE_STATE:I = 0x1

.field private static final NUM_SCANS_UNTIL_ABORT:I = 0x4

.field private static final SUBSCRIPTION_CHANGED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EmergencyAffordanceService"


# instance fields
.field private mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mEmergencyAffordanceNeeded:Z

.field private final mEmergencyCallMccNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

.field private final mLock:Ljava/lang/Object;

.field private mNetworkNeedsEmergencyAffordance:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mScansCompleted:I

.field private mSimNeedsEmergencyAffordance:Z

.field private mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVoiceCapable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$1;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$1;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 90
    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$2;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$2;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$3;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$3;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 118
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 121
    .local v0, "numbers":[I
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    .line 122
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_35
    array-length v2, v0

    if-ge v1, v2, :cond_46

    .line 123
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 125
    .end local v1    # "i":I
    :cond_46
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/emergency/EmergencyAffordanceService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 48
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->isEmergencyAffordanceNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 48
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->requestCellScan()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 48
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->startScanning()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/emergency/EmergencyAffordanceService;)Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 48
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 48
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleInitializeState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/emergency/EmergencyAffordanceService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 48
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateCellInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/emergency/EmergencyAffordanceService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 48
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()Z

    move-result v0

    return v0
.end method

.method private handleInitializeState()V
    .registers 2

    .line 207
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 208
    return-void

    .line 210
    :cond_7
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateCellInfo()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 211
    return-void

    .line 213
    :cond_e
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 214
    return-void
.end method

.method private handleUpdateCellInfo()Z
    .registers 8

    .line 271
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 272
    .local v0, "cellInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 273
    return v1

    .line 275
    :cond_a
    const/4 v2, 0x0

    .line 276
    .local v2, "stopScanningAfterScan":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellInfo;

    .line 277
    .local v4, "cellInfo":Landroid/telephony/CellInfo;
    const/4 v5, 0x0

    .line 278
    .local v5, "mcc":I
    instance-of v6, v4, Landroid/telephony/CellInfoGsm;

    if-eqz v6, :cond_2c

    .line 279
    move-object v6, v4

    check-cast v6, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v5

    goto :goto_4b

    .line 280
    :cond_2c
    instance-of v6, v4, Landroid/telephony/CellInfoLte;

    if-eqz v6, :cond_3c

    .line 281
    move-object v6, v4

    check-cast v6, Landroid/telephony/CellInfoLte;

    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v5

    goto :goto_4b

    .line 282
    :cond_3c
    instance-of v6, v4, Landroid/telephony/CellInfoWcdma;

    if-eqz v6, :cond_4b

    .line 283
    move-object v6, v4

    check-cast v6, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v5

    .line 285
    :cond_4b
    :goto_4b
    invoke-direct {p0, v5}, Lcom/android/server/emergency/EmergencyAffordanceService;->mccRequiresEmergencyAffordance(I)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 286
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService;->setNetworkNeedsEmergencyAffordance(Z)V

    .line 287
    return v1

    .line 288
    :cond_56
    if-eqz v5, :cond_5e

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_5e

    .line 290
    const/4 v2, 0x1

    .line 292
    .end local v4    # "cellInfo":Landroid/telephony/CellInfo;
    .end local v5    # "mcc":I
    :cond_5e
    goto :goto_f

    .line 293
    :cond_5f
    if-eqz v2, :cond_65

    .line 294
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->stopScanning()V

    goto :goto_68

    .line 296
    :cond_65
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->onCellScanFinishedUnsuccessful()V

    .line 298
    :goto_68
    invoke-direct {p0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService;->setNetworkNeedsEmergencyAffordance(Z)V

    .line 299
    return v1
.end method

.method private handleUpdateSimSubscriptionInfo()Z
    .registers 10

    .line 217
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->simNeededAffordanceBefore()Z

    move-result v0

    .line 218
    .local v0, "neededBefore":Z
    move v1, v0

    .line 219
    .local v1, "neededNow":Z
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 220
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 221
    .local v2, "activeSubscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v2, :cond_11

    .line 222
    invoke-direct {p0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService;->setSimNeedsEmergencyAffordance(Z)V

    .line 223
    return v1

    .line 225
    :cond_11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 226
    .local v4, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v5

    .line 227
    .local v5, "mcc":I
    invoke-direct {p0, v5}, Lcom/android/server/emergency/EmergencyAffordanceService;->mccRequiresEmergencyAffordance(I)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 228
    const/4 v1, 0x1

    .line 229
    goto :goto_5e

    .line 230
    :cond_2d
    if-eqz v5, :cond_35

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_35

    .line 232
    const/4 v1, 0x0

    .line 234
    :cond_35
    iget-object v6, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, "simOperator":Ljava/lang/String;
    const/4 v5, 0x0

    .line 236
    if-eqz v6, :cond_52

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_52

    .line 237
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 239
    :cond_52
    if-eqz v5, :cond_5d

    .line 240
    invoke-direct {p0, v5}, Lcom/android/server/emergency/EmergencyAffordanceService;->mccRequiresEmergencyAffordance(I)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 241
    const/4 v1, 0x1

    .line 242
    goto :goto_5e

    .line 245
    :cond_5c
    const/4 v1, 0x0

    .line 248
    .end local v4    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "mcc":I
    .end local v6    # "simOperator":Ljava/lang/String;
    :cond_5d
    goto :goto_15

    .line 249
    :cond_5e
    :goto_5e
    invoke-direct {p0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService;->setSimNeedsEmergencyAffordance(Z)V

    .line 250
    return v1
.end method

.method private isEmergencyAffordanceNeeded()Z
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    monitor-exit v0

    return v1

    .line 150
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private mccRequiresEmergencyAffordance(I)Z
    .registers 4
    .param p1, "mcc"    # I

    .line 319
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onCellScanFinishedUnsuccessful()V
    .registers 4

    .line 310
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_3
    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    .line 312
    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_11

    .line 313
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->stopScanning()V

    .line 315
    :cond_11
    monitor-exit v0

    .line 316
    return-void

    .line 315
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private requestCellScan()V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 106
    return-void
.end method

.method private setNetworkNeedsEmergencyAffordance(Z)V
    .registers 4
    .param p1, "needsAffordance"    # Z

    .line 303
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mNetworkNeedsEmergencyAffordance:Z

    .line 305
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 306
    monitor-exit v0

    .line 307
    return-void

    .line 306
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private setSimNeedsEmergencyAffordance(Z)V
    .registers 4
    .param p1, "simNeedsEmergencyAffordance"    # Z

    .line 254
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->simNeededAffordanceBefore()Z

    move-result v0

    if-eq v0, p1, :cond_12

    .line 255
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_sim_inserted_before"

    .line 257
    nop

    .line 255
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    if-eq p1, v0, :cond_1b

    .line 260
    iput-boolean p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    .line 261
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 263
    :cond_1b
    return-void
.end method

.method private simNeededAffordanceBefore()Z
    .registers 4

    .line 266
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_sim_inserted_before"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    nop

    :cond_11
    return v2
.end method

.method private startScanning()V
    .registers 4

    .line 179
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x410

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 181
    return-void
.end method

.method private stopScanning()V
    .registers 5

    .line 141
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_3
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 143
    iput v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private updateEmergencyAffordanceNeeded()V
    .registers 5

    .line 128
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mNetworkNeedsEmergencyAffordance:Z

    if-eqz v1, :cond_11

    :cond_f
    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    iput-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    .line 131
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_affordance_needed"

    .line 133
    iget-boolean v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    .line 131
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    if-eqz v1, :cond_28

    .line 135
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->stopScanning()V

    .line 137
    :cond_28
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 6
    .param p1, "phase"    # I

    .line 159
    const/16 v0, 0x258

    if-ne p1, v0, :cond_5f

    .line 160
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 161
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    .line 162
    iget-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    if-nez v0, :cond_20

    .line 163
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 164
    return-void

    .line 166
    :cond_20
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 167
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EmergencyAffordanceService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 169
    new-instance v1, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    .line 170
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 171
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->startScanning()V

    .line 172
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 176
    .end local v0    # "thread":Landroid/os/HandlerThread;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_5f
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 155
    return-void
.end method
