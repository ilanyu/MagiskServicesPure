.class public Lcom/android/server/content/SyncOperation;
.super Ljava/lang/Object;
.source "SyncOperation.java"


# static fields
.field public static final NO_JOB_ID:I = -0x1

.field public static final REASON_ACCOUNTS_UPDATED:I = -0x2

.field public static final REASON_BACKGROUND_DATA_SETTINGS_CHANGED:I = -0x1

.field public static final REASON_IS_SYNCABLE:I = -0x5

.field public static final REASON_MASTER_SYNC_AUTO:I = -0x7

.field private static REASON_NAMES:[Ljava/lang/String; = null

.field public static final REASON_PERIODIC:I = -0x4

.field public static final REASON_SERVICE_CHANGED:I = -0x3

.field public static final REASON_SYNC_AUTO:I = -0x6

.field public static final REASON_USER_START:I = -0x8

.field public static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field public final allowParallelSyncs:Z

.field public expectedRuntime:J

.field public final extras:Landroid/os/Bundle;

.field public final flexMillis:J

.field public final isPeriodic:Z

.field public jobId:I

.field public final key:Ljava/lang/String;

.field public miuiInitPeriodicFixed:Z

.field public final owningPackage:Ljava/lang/String;

.field public final owningUid:I

.field public final periodMillis:J

.field public final reason:I

.field retries:I

.field public final sourcePeriodicId:I

.field public syncExemptionFlag:I

.field public final syncSource:I

.field public final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

.field public wakeLockName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 57
    const-string v0, "DataSettingsChanged"

    const-string v1, "AccountsUpdated"

    const-string v2, "ServiceChanged"

    const-string v3, "Periodic"

    const-string v4, "IsSyncable"

    const-string v5, "AutoSync"

    const-string v6, "MasterSyncAuto"

    const-string v7, "UserStart"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V
    .registers 23
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "owningUid"    # I
    .param p4, "owningPackage"    # Ljava/lang/String;
    .param p5, "reason"    # I
    .param p6, "source"    # I
    .param p7, "provider"    # Ljava/lang/String;
    .param p8, "extras"    # Landroid/os/Bundle;
    .param p9, "allowParallelSyncs"    # Z
    .param p10, "syncExemptionFlag"    # I

    .line 111
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object v9, p1

    move v10, p2

    move-object/from16 v11, p7

    invoke-direct {v1, v9, v11, v10}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object v0, p0

    move v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZI)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncOperation;)V
    .registers 4
    .param p1, "other"    # Lcom/android/server/content/SyncOperation;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 161
    iget v0, p1, Lcom/android/server/content/SyncOperation;->owningUid:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 162
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 163
    iget v0, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->reason:I

    .line 164
    iget v0, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 165
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 166
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 167
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    .line 168
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 169
    iget v0, p1, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 170
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 171
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 172
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    .line 173
    iget v0, p1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 174
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncOperation;JJ)V
    .registers 22
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "periodMillis"    # J
    .param p4, "flexMillis"    # J

    move-object/from16 v0, p1

    .line 123
    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v0, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v4, v0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v6, v0, Lcom/android/server/content/SyncOperation;->syncSource:I

    new-instance v7, Landroid/os/Bundle;

    iget-object v1, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {v7, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-boolean v8, v0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iget-boolean v9, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    iget v10, v0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v1 .. v15}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 126
    return-void
.end method

.method private constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZI)V
    .registers 24
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "owningUid"    # I
    .param p3, "owningPackage"    # Ljava/lang/String;
    .param p4, "reason"    # I
    .param p5, "source"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "allowParallelSyncs"    # Z
    .param p8, "syncExemptionFlag"    # I

    .line 118
    const/4 v8, 0x0

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v14, p8

    invoke-direct/range {v0 .. v14}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V
    .registers 16
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "owningUid"    # I
    .param p3, "owningPackage"    # Ljava/lang/String;
    .param p4, "reason"    # I
    .param p5, "source"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "allowParallelSyncs"    # Z
    .param p8, "isPeriodic"    # Z
    .param p9, "sourcePeriodicId"    # I
    .param p10, "periodMillis"    # J
    .param p12, "flexMillis"    # J
    .param p14, "syncExemptionFlag"    # I

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 133
    iput p2, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 134
    iput-object p3, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 135
    iput p4, p0, Lcom/android/server/content/SyncOperation;->reason:I

    .line 136
    iput p5, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 138
    iput-boolean p7, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 139
    iput-boolean p8, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 140
    iput p9, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 141
    iput-wide p10, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 142
    iput-wide p12, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 144
    invoke-direct {p0}, Lcom/android/server/content/SyncOperation;->toKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    .line 145
    iput p14, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 146
    return-void
.end method

.method static extrasToString(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 519
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 505
    if-nez p0, :cond_9

    .line 506
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    return-void

    .line 509
    :cond_9
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 511
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_16

    .line 513
    :cond_37
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    return-void
.end method

.method static maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;
    .registers 37
    .param p0, "jobExtras"    # Landroid/os/PersistableBundle;

    .line 255
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 256
    return-object v1

    .line 269
    :cond_6
    const-string v2, "SyncManagerJob"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_10

    .line 270
    return-object v1

    .line 273
    :cond_10
    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "accountName":Ljava/lang/String;
    const-string v2, "accountType"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "accountType":Ljava/lang/String;
    const-string/jumbo v4, "provider"

    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, "provider":Ljava/lang/String;
    const-string/jumbo v5, "userId"

    const v6, 0x7fffffff

    invoke-virtual {v0, v5, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 277
    .local v5, "userId":I
    const-string/jumbo v7, "owningUid"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 278
    .local v7, "owningUid":I
    const-string/jumbo v8, "owningPackage"

    invoke-virtual {v0, v8}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 279
    .local v23, "owningPackage":Ljava/lang/String;
    const-string/jumbo v8, "reason"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 280
    .local v24, "reason":I
    const-string/jumbo v8, "source"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 281
    .local v6, "source":I
    const-string v8, "allowParallelSyncs"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 282
    .local v25, "allowParallelSyncs":Z
    const-string/jumbo v8, "isPeriodic"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 283
    .local v26, "isPeriodic":Z
    const-string/jumbo v8, "sourcePeriodicId"

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v27

    .line 284
    .local v27, "initiatedBy":I
    const-string/jumbo v8, "periodMillis"

    invoke-virtual {v0, v8}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 285
    .local v28, "periodMillis":J
    const-string v8, "flexMillis"

    invoke-virtual {v0, v8}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    .line 286
    .local v30, "flexMillis":J
    const-string/jumbo v8, "syncExemptionFlag"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v32

    .line 288
    .local v32, "syncExemptionFlag":I
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object v15, v8

    .line 290
    .local v15, "extras":Landroid/os/Bundle;
    const-string/jumbo v8, "syncExtras"

    invoke-virtual {v0, v8}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v14

    .line 291
    .local v14, "syncExtras":Landroid/os/PersistableBundle;
    if-eqz v14, :cond_84

    .line 292
    invoke-virtual {v15, v14}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 295
    :cond_84
    invoke-virtual/range {p0 .. p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 296
    .local v9, "key":Ljava/lang/String;
    if-eqz v9, :cond_c1

    const-string v10, "ACCOUNT:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c1

    .line 297
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 298
    .local v10, "newKey":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v11

    .line 299
    .local v11, "accountsBundle":Landroid/os/PersistableBundle;
    new-instance v12, Landroid/accounts/Account;

    const-string v13, "accountName"

    invoke-virtual {v11, v13}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "accountType"

    .line 300
    invoke-virtual {v11, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v13, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v12

    .line 301
    .local v3, "account":Landroid/accounts/Account;
    invoke-virtual {v15, v10, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 303
    .end local v3    # "account":Landroid/accounts/Account;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "newKey":Ljava/lang/String;
    .end local v11    # "accountsBundle":Landroid/os/PersistableBundle;
    :cond_c1
    nop

    .line 295
    const/4 v3, 0x0

    goto :goto_8c

    .line 305
    :cond_c4
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .restart local v3    # "account":Landroid/accounts/Account;
    new-instance v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v9, v3, v4, v5}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 308
    .local v9, "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    new-instance v33, Lcom/android/server/content/SyncOperation;

    move-object/from16 v8, v33

    move v10, v7

    move-object/from16 v11, v23

    move/from16 v12, v24

    move v13, v6

    move-object/from16 v34, v14

    move-object v14, v15

    .line 308
    .end local v14    # "syncExtras":Landroid/os/PersistableBundle;
    .local v34, "syncExtras":Landroid/os/PersistableBundle;
    move-object/from16 v35, v15

    move/from16 v15, v25

    .line 308
    .end local v15    # "extras":Landroid/os/Bundle;
    .local v35, "extras":Landroid/os/Bundle;
    move/from16 v16, v26

    move/from16 v17, v27

    move-wide/from16 v18, v28

    move-wide/from16 v20, v30

    move/from16 v22, v32

    invoke-direct/range {v8 .. v22}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 311
    .local v8, "op":Lcom/android/server/content/SyncOperation;
    const-string/jumbo v10, "jobId"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 312
    const-string v10, "expectedRuntime"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 313
    const-string/jumbo v10, "retries"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/android/server/content/SyncOperation;->retries:I

    .line 316
    const-string/jumbo v10, "miui-init-periodic-sync-fix"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v8, Lcom/android/server/content/SyncOperation;->miuiInitPeriodicFixed:Z

    .line 318
    return-object v8
.end method

.method static reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;
    .registers 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "reason"    # I

    .line 452
    const/4 v0, 0x1

    if-ltz p1, :cond_23

    .line 453
    if-eqz p0, :cond_1e

    .line 454
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_12

    array-length v2, v1

    if-ne v2, v0, :cond_12

    .line 456
    const/4 v0, 0x0

    aget-object v0, v1, v0

    return-object v0

    .line 458
    :cond_12
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 460
    return-object v0

    .line 462
    :cond_19
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 464
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_1e
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 467
    :cond_23
    neg-int v1, p1

    sub-int/2addr v1, v0

    .line 468
    .local v1, "index":I
    sget-object v0, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-lt v1, v0, :cond_2f

    .line 469
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 471
    :cond_2f
    sget-object v0, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v1

    return-object v0
.end method

.method private toKey()Ljava/lang/String;
    .registers 4

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " account {name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v1, " isPeriodic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 368
    const-string v1, " period: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 369
    const-string v1, " flex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 370
    const-string v1, " extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;
    .registers 18

    .line 150
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v1, :cond_8

    .line 151
    const/4 v1, 0x0

    return-object v1

    .line 153
    :cond_8
    new-instance v1, Lcom/android/server/content/SyncOperation;

    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v0, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v5, v0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v7, v0, Lcom/android/server/content/SyncOperation;->syncSource:I

    new-instance v8, Landroid/os/Bundle;

    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {v8, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-boolean v9, v0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    const/4 v10, 0x0

    iget v11, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    iget-wide v12, v0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v14, v0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    const/16 v16, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 156
    .local v1, "op":Lcom/android/server/content/SyncOperation;
    return-object v1
.end method

.method dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;)Ljava/lang/String;
    .registers 9
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "shorter"    # Z
    .param p3, "appStates"    # Lcom/android/server/content/SyncAdapterStateFetcher;

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "JobId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    sget-object v1, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-wide v1, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_68

    .line 394
    const-string v1, " ExpectedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    iget-wide v1, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 396
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 395
    invoke-static {v0, v1, v2}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 398
    :cond_68
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v2, "expedited"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 399
    const-string v1, " EXPEDITED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_78
    iget v1, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    packed-switch v1, :pswitch_data_13a

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ExemptionFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a1

    .line 408
    :pswitch_94
    const-string v1, " STANDBY-EXEMPTED(TOP)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    goto :goto_a1

    .line 405
    :pswitch_9a
    const-string v1, " STANDBY-EXEMPTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    goto :goto_a1

    .line 403
    :pswitch_a0
    nop

    .line 414
    :goto_a1
    const-string v1, " Reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    iget v1, p0, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-static {p1, v1}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v1, :cond_cc

    .line 417
    const-string v1, " (period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    iget-wide v1, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-static {v0, v1, v2}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 419
    const-string v1, " flex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    iget-wide v1, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-static {v0, v1, v2}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 421
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_cc
    iget v1, p0, Lcom/android/server/content/SyncOperation;->retries:I

    if-lez v1, :cond_da

    .line 424
    const-string v1, " Retries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    iget v1, p0, Lcom/android/server/content/SyncOperation;->retries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    :cond_da
    if-nez p2, :cond_134

    .line 428
    const-string v1, " Owner={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    iget v1, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 430
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    if-eqz p3, :cond_118

    .line 433
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    iget v1, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 435
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 434
    invoke-virtual {p3, v1, v2}, Lcom/android/server/content/SyncAdapterStateFetcher;->getStandbyBucket(ILjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    iget v1, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-virtual {p3, v1}, Lcom/android/server/content/SyncAdapterStateFetcher;->isAppActive(I)Z

    move-result v1

    if-eqz v1, :cond_118

    .line 439
    const-string v1, " [ACTIVE]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_118
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_134

    .line 444
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 448
    :cond_134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_9a
        :pswitch_94
    .end packed-switch
.end method

.method findPriority()I
    .registers 2

    .line 350
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 351
    const/16 v0, 0x14

    return v0

    .line 352
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 353
    const/16 v0, 0xa

    return v0

    .line 355
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method ignoreBackoff()Z
    .registers 4

    .line 485
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "ignore_backoff"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isAppStandbyExempted()Z
    .registers 2

    .line 501
    iget v0, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isConflict(Lcom/android/server/content/SyncOperation;)Z
    .registers 5
    .param p1, "toRun"    # Lcom/android/server/content/SyncOperation;

    .line 327
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 328
    .local v0, "other":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 329
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-ne v1, v2, :cond_3c

    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 332
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    :cond_3a
    const/4 v1, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    .line 328
    :goto_3d
    return v1
.end method

.method isDerivedFromFailedPeriodicSync()Z
    .registers 3

    .line 346
    iget v0, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isExpedited()Z
    .registers 4

    .line 481
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "expedited"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isIgnoreSettings()Z
    .registers 4

    .line 497
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "ignore_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isInitialization()Z
    .registers 4

    .line 477
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "initialize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isManual()Z
    .registers 4

    .line 493
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "force"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isNotAllowedOnMetered()Z
    .registers 4

    .line 489
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "allow_metered"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isReasonPeriodic()Z
    .registers 3

    .line 336
    iget v0, p0, Lcom/android/server/content/SyncOperation;->reason:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method matchesPeriodicOperation(Lcom/android/server/content/SyncOperation;)Z
    .registers 8
    .param p1, "other"    # Lcom/android/server/content/SyncOperation;

    .line 340
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 341
    invoke-static {v0, v2, v1}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_26

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 340
    :goto_27
    return v1
.end method

.method public toEventLog(I)[Ljava/lang/Object;
    .registers 5
    .param p1, "event"    # I

    .line 533
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 534
    .local v0, "logArray":[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 535
    iget v1, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 536
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 537
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 538
    return-object v0
.end method

.method toJobInfoExtras()Landroid/os/PersistableBundle;
    .registers 10

    .line 191
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 193
    .local v0, "jobInfoExtras":Landroid/os/PersistableBundle;
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 194
    .local v1, "syncExtrasBundle":Landroid/os/PersistableBundle;
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 195
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 196
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Landroid/accounts/Account;

    if-eqz v5, :cond_55

    .line 197
    move-object v5, v4

    check-cast v5, Landroid/accounts/Account;

    .line 198
    .local v5, "account":Landroid/accounts/Account;
    new-instance v6, Landroid/os/PersistableBundle;

    invoke-direct {v6}, Landroid/os/PersistableBundle;-><init>()V

    .line 199
    .local v6, "accountBundle":Landroid/os/PersistableBundle;
    const-string v7, "accountName"

    iget-object v8, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v7, "accountType"

    iget-object v8, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACCOUNT:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 204
    .end local v5    # "account":Landroid/accounts/Account;
    .end local v6    # "accountBundle":Landroid/os/PersistableBundle;
    goto :goto_ba

    :cond_55
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_64

    .line 205
    move-object v5, v4

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_ba

    .line 206
    :cond_64
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_73

    .line 207
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_ba

    .line 208
    :cond_73
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_82

    .line 209
    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v1, v3, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_ba

    .line 210
    :cond_82
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_92

    .line 211
    move-object v5, v4

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_ba

    .line 212
    :cond_92
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_a1

    .line 213
    move-object v5, v4

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_ba

    .line 214
    :cond_a1
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_ac

    .line 215
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ba

    .line 216
    :cond_ac
    if-nez v4, :cond_b3

    .line 217
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ba

    .line 219
    :cond_b3
    const-string v5, "SyncManager"

    const-string v6, "Unknown extra type."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :goto_ba
    goto/16 :goto_14

    .line 224
    :cond_bc
    const-string/jumbo v2, "miui-init-periodic-sync-fix"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 226
    const-string/jumbo v2, "syncExtras"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 228
    const-string v2, "SyncManagerJob"

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 230
    const-string/jumbo v2, "provider"

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v2, "accountName"

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v2, "accountType"

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string/jumbo v2, "userId"

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 234
    const-string/jumbo v2, "owningUid"

    iget v3, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 235
    const-string/jumbo v2, "owningPackage"

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v2, "reason"

    iget v3, p0, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 237
    const-string/jumbo v2, "source"

    iget v3, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 238
    const-string v2, "allowParallelSyncs"

    iget-boolean v3, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    const-string/jumbo v2, "jobId"

    iget v3, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 240
    const-string/jumbo v2, "isPeriodic"

    iget-boolean v3, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    const-string/jumbo v2, "sourcePeriodicId"

    iget v3, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 242
    const-string/jumbo v2, "periodMillis"

    iget-wide v3, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 243
    const-string v2, "flexMillis"

    iget-wide v3, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 244
    const-string v2, "expectedRuntime"

    iget-wide v3, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 245
    const-string/jumbo v2, "retries"

    iget v3, p0, Lcom/android/server/content/SyncOperation;->retries:I

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 246
    const-string/jumbo v2, "syncExemptionFlag"

    iget v3, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 247
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 377
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method wakeLockName()Ljava/lang/String;
    .registers 3

    .line 523
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 524
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    return-object v0

    .line 526
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/***"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    return-object v0
.end method
