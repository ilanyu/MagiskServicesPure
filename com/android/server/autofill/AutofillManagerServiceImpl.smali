.class final Lcom/android/server/autofill/AutofillManagerServiceImpl;
.super Ljava/lang/Object;
.source "AutofillManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;
    }
.end annotation


# static fields
.field private static final MAX_ABANDONED_SESSION_MILLIS:I = 0x7530

.field private static final MAX_SESSION_ID_CREATE_TRIES:I = 0x800

.field private static final TAG:Ljava/lang/String; = "AutofillManagerServiceImpl"

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private final mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

.field private mClients:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/autofill/IAutoFillManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDisabledActivities:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabledApps:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHistory:Landroid/service/autofill/FillEventHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:Landroid/service/autofill/AutofillServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLastPrune:J

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mRequestsHistory:Landroid/util/LocalLog;

.field private final mSessions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/autofill/Session;",
            ">;"
        }
    .end annotation
.end field

.field private mSetupComplete:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUi:Lcom/android/server/autofill/ui/AutoFillUI;

.field private final mUiLatencyHistory:Landroid/util/LocalLog;

.field private mUserData:Landroid/service/autofill/UserData;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUserId:I

.field private final mWtfHistory:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sRandom:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroid/util/LocalLog;Landroid/util/LocalLog;Landroid/util/LocalLog;ILcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;Z)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "requestsHistory"    # Landroid/util/LocalLog;
    .param p4, "uiLatencyHistory"    # Landroid/util/LocalLog;
    .param p5, "wtfHistory"    # Landroid/util/LocalLog;
    .param p6, "userId"    # I
    .param p7, "ui"    # Lcom/android/server/autofill/ui/AutoFillUI;
    .param p8, "autofillCompatState"    # Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;
    .param p9, "disabled"    # Z

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 160
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 171
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    .line 176
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 178
    iput-object p3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRequestsHistory:Landroid/util/LocalLog;

    .line 179
    iput-object p4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 180
    iput-object p5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mWtfHistory:Landroid/util/LocalLog;

    .line 181
    iput p6, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    .line 182
    iput-object p7, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 183
    new-instance v0, Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-direct {v0, p1, p6}, Lcom/android/server/autofill/FieldClassificationStrategy;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 184
    iput-object p8, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    .line 185
    invoke-virtual {p0, p9}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateLocked(Z)V

    .line 186
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 94
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 94
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    return-object v0
.end method

.method private assertCallerLocked(Landroid/content/ComponentName;Z)V
    .registers 13
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "compatMode"    # Z

    .line 525
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 527
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 530
    .local v2, "callingUid":I
    :try_start_e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_16} :catch_c0

    .line 533
    .local v3, "packageUid":I
    nop

    .line 532
    nop

    .line 534
    if-eq v2, v3, :cond_bf

    const-class v4, Landroid/app/ActivityManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal;

    .line 535
    invoke-virtual {v4, v2, v0}, Landroid/app/ActivityManagerInternal;->hasRunningActivity(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_bf

    .line 536
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 537
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_32

    const/4 v5, 0x0

    aget-object v5, v4, v5

    goto :goto_44

    :cond_32
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 538
    .local v5, "callingPackage":Ljava/lang/String;
    :goto_44
    const-string v6, "AutofillManagerServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App (package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", UID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") passed component ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") owned by UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v6, Landroid/metrics/LogMaker;

    const/16 v7, 0x3b4

    invoke-direct {v6, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 543
    invoke-virtual {v6, v5}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v6

    const/16 v7, 0x38c

    .line 544
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v6

    const/16 v7, 0x3b5

    .line 546
    if-nez p1, :cond_8f

    const-string/jumbo v8, "null"

    goto :goto_93

    :cond_8f
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    .line 545
    :goto_93
    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v6

    .line 547
    .local v6, "log":Landroid/metrics/LogMaker;
    if-eqz p2, :cond_a3

    .line 548
    const/16 v7, 0x586

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 550
    :cond_a3
    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v7, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 552
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid component: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 554
    .end local v4    # "packages":[Ljava/lang/String;
    .end local v5    # "callingPackage":Ljava/lang/String;
    .end local v6    # "log":Landroid/metrics/LogMaker;
    :cond_bf
    return-void

    .line 531
    .end local v3    # "packageUid":I
    :catch_c0
    move-exception v3

    .line 532
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not verify UID for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private createSessionByTokenLocked(Landroid/os/IBinder;ILandroid/os/IBinder;ZLandroid/content/ComponentName;ZZI)Lcom/android/server/autofill/Session;
    .registers 32
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "uid"    # I
    .param p3, "appCallbackToken"    # Landroid/os/IBinder;
    .param p4, "hasCallback"    # Z
    .param p5, "componentName"    # Landroid/content/ComponentName;
    .param p6, "compatMode"    # Z
    .param p7, "bindInstantServiceAllowed"    # Z
    .param p8, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v15, p0

    .line 499
    const/4 v0, 0x0

    .line 501
    .local v0, "tries":I
    :goto_3
    add-int/lit8 v14, v0, 0x1

    .line 502
    .end local v0    # "tries":I
    .local v14, "tries":I
    const/16 v0, 0x800

    if-le v14, v0, :cond_12

    .line 503
    const-string v0, "AutofillManagerServiceImpl"

    const-string v1, "Cannot create session in 2048 tries"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v0, 0x0

    return-object v0

    .line 507
    :cond_12
    sget-object v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v13

    .line 508
    .local v13, "sessionId":I
    const/high16 v0, -0x80000000

    if-eq v13, v0, :cond_74

    iget-object v0, v15, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_74

    .line 510
    move-object/from16 v12, p5

    move/from16 v11, p6

    invoke-direct {v15, v12, v11}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->assertCallerLocked(Landroid/content/ComponentName;Z)V

    .line 512
    new-instance v19, Lcom/android/server/autofill/Session;

    iget-object v2, v15, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v3, v15, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v4, v15, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mHandler:Landroid/os/Handler;

    iget v5, v15, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    iget-object v6, v15, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    iget-object v10, v15, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUiLatencyHistory:Landroid/util/LocalLog;

    iget-object v9, v15, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mWtfHistory:Landroid/util/LocalLog;

    iget-object v0, v15, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 514
    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v16

    move-object/from16 v0, v19

    move-object v1, v15

    move v7, v13

    move/from16 v8, p2

    move-object/from16 v17, v9

    move-object/from16 v9, p1

    move-object/from16 v18, v10

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, v18

    move/from16 v20, v13

    move-object/from16 v13, v17

    .end local v13    # "sessionId":I
    .local v20, "sessionId":I
    move/from16 v21, v14

    move-object/from16 v14, v16

    .end local v14    # "tries":I
    .local v21, "tries":I
    move-object/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p8

    invoke-direct/range {v0 .. v18}, Lcom/android/server/autofill/Session;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/ui/AutoFillUI;Landroid/content/Context;Landroid/os/Handler;ILjava/lang/Object;IILandroid/os/IBinder;Landroid/os/IBinder;ZLandroid/util/LocalLog;Landroid/util/LocalLog;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZI)V

    .line 516
    .local v0, "newSession":Lcom/android/server/autofill/Session;
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 518
    return-object v0

    .line 499
    .end local v0    # "newSession":Lcom/android/server/autofill/Session;
    .end local v20    # "sessionId":I
    .end local v21    # "tries":I
    .restart local v14    # "tries":I
    :cond_74
    move/from16 v21, v14

    move-object v1, v15

    .end local v14    # "tries":I
    .restart local v21    # "tries":I
    move-object v15, v1

    move/from16 v0, v21

    goto :goto_3
.end method

.method private getComponentNameFromSettings()Ljava/lang/String;
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 246
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_service"

    iget v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    .line 245
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getServiceUidLocked()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-nez v0, :cond_d

    .line 208
    const-string v0, "AutofillManagerServiceImpl"

    const-string v1, "getServiceUidLocked(): no mInfo"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v0, -0x1

    return v0

    .line 211
    :cond_d
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method private isAutofillDisabledLocked(Landroid/content/ComponentName;)Z
    .registers 10
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1199
    const-wide/16 v0, 0x0

    .line 1200
    .local v0, "elapsedTime":J
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledActivities:Landroid/util/ArrayMap;

    const/4 v3, 0x1

    if-eqz v2, :cond_46

    .line 1201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1202
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1203
    .local v2, "expiration":Ljava/lang/Long;
    if-eqz v2, :cond_46

    .line 1204
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-ltz v4, :cond_1e

    return v3

    .line 1206
    :cond_1e
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_41

    .line 1207
    const-string v4, "AutofillManagerServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from disabled list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_41
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    .end local v2    # "expiration":Ljava/lang/Long;
    :cond_46
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1216
    .local v2, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledApps:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    if-nez v4, :cond_50

    return v5

    .line 1218
    :cond_50
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 1219
    .local v4, "expiration":Ljava/lang/Long;
    if-nez v4, :cond_5b

    return v5

    .line 1221
    :cond_5b
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_65

    .line 1222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1225
    :cond_65
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-ltz v6, :cond_6e

    return v3

    .line 1228
    :cond_6e
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_8d

    const-string v3, "AutofillManagerServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from disabled list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_8d
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    return v5
.end method

.method private isCalledByServiceLocked(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 910
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceUidLocked()I

    move-result v0

    if-eq v0, p2, :cond_2d

    .line 911
    const-string v0, "AutofillManagerServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "() called by UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but service UID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceUidLocked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 911
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const/4 v0, 0x0

    return v0

    .line 915
    :cond_2d
    const/4 v0, 0x1

    return v0
.end method

.method private isClientSessionDestroyedLocked(Landroid/view/autofill/IAutoFillManagerClient;)Z
    .registers 6
    .param p1, "client"    # Landroid/view/autofill/IAutoFillManagerClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1124
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1125
    .local v0, "sessionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_23

    .line 1126
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/Session;

    .line 1127
    .local v2, "session":Lcom/android/server/autofill/Session;
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1128
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->isDestroyed()Z

    move-result v3

    return v3

    .line 1125
    .end local v2    # "session":Lcom/android/server/autofill/Session;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1131
    .end local v1    # "i":I
    :cond_23
    const/4 v1, 0x1

    return v1
.end method

.method private isSetupCompletedLocked()Z
    .registers 4

    .line 239
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 240
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    iget v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    .line 239
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "setupComplete":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isValidEventLocked(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "sessionId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 711
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 712
    const-string v0, "AutofillManagerServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": not logging event because history is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return v1

    .line 715
    :cond_1c
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    invoke-virtual {v0}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    move-result v0

    if-eq p2, v0, :cond_50

    .line 716
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_4f

    .line 717
    const-string v0, "AutofillManagerServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": not logging event for session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " because tracked session is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 718
    invoke-virtual {v3}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 717
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_4f
    return v1

    .line 722
    :cond_50
    const/4 v0, 0x1

    return v0
.end method

.method private pruneAbandonedSessionsLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 399
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    const-wide/16 v4, 0x7530

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_24

    .line 400
    iput-wide v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    .line 402
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_24

    .line 403
    new-instance v2, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/AutofillManagerServiceImpl$1;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 406
    :cond_24
    return-void
.end method

.method private sendStateToClients(Z)V
    .registers 11
    .param p1, "resetClient"    # Z

    .line 1079
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_9

    .line 1081
    monitor-exit v0

    return-void

    .line 1083
    :cond_9
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 1084
    .local v1, "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/autofill/IAutoFillManagerClient;>;"
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1085
    .local v2, "userClientCount":I
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_5d

    .line 1087
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_12
    if-ge v3, v2, :cond_58

    .line 1088
    :try_start_14
    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/IAutoFillManagerClient;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_53

    .line 1092
    .local v4, "client":Landroid/view/autofill/IAutoFillManagerClient;
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_4f
    .catchall {:try_start_1a .. :try_end_1d} :catchall_53

    .line 1093
    if-nez p1, :cond_2a

    :try_start_1f
    invoke-direct {p0, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isClientSessionDestroyedLocked(Landroid/view/autofill/IAutoFillManagerClient;)Z

    move-result v6

    if-eqz v6, :cond_26

    goto :goto_2a

    :cond_26
    move v6, v0

    goto :goto_2b

    .line 1095
    :catchall_28
    move-exception v6

    goto :goto_4d

    .line 1093
    :cond_2a
    :goto_2a
    const/4 v6, 0x1

    .line 1094
    .local v6, "resetSession":Z
    :goto_2b
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v7

    .line 1095
    .local v7, "isEnabled":Z
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_28

    .line 1096
    const/4 v5, 0x0

    .line 1097
    .local v5, "flags":I
    if-eqz v7, :cond_35

    .line 1098
    or-int/lit8 v5, v5, 0x1

    .line 1100
    :cond_35
    if-eqz v6, :cond_39

    .line 1101
    or-int/lit8 v5, v5, 0x2

    .line 1103
    :cond_39
    if-eqz p1, :cond_3d

    .line 1104
    or-int/lit8 v5, v5, 0x4

    .line 1106
    :cond_3d
    :try_start_3d
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_43

    .line 1107
    or-int/lit8 v5, v5, 0x8

    .line 1109
    :cond_43
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_49

    .line 1110
    or-int/lit8 v5, v5, 0x10

    .line 1112
    :cond_49
    invoke-interface {v4, v5}, Landroid/view/autofill/IAutoFillManagerClient;->setState(I)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4c} :catch_4f
    .catchall {:try_start_3d .. :try_end_4c} :catchall_53

    .line 1115
    .end local v5    # "flags":I
    .end local v6    # "resetSession":Z
    .end local v7    # "isEnabled":Z
    goto :goto_50

    .line 1095
    :goto_4d
    :try_start_4d
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_28

    :try_start_4e
    throw v6
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_4f} :catch_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_53

    .line 1113
    :catch_4f
    move-exception v5

    .line 1087
    .end local v4    # "client":Landroid/view/autofill/IAutoFillManagerClient;
    :goto_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1118
    .end local v3    # "i":I
    :catchall_53
    move-exception v0

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0

    :cond_58
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1119
    nop

    .line 1120
    return-void

    .line 1085
    .end local v1    # "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/autofill/IAutoFillManagerClient;>;"
    .end local v2    # "userClientCount":I
    :catchall_5d
    move-exception v1

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v1
.end method


# virtual methods
.method addClientLocked(Landroid/view/autofill/IAutoFillManagerClient;)Z
    .registers 3
    .param p1, "client"    # Landroid/view/autofill/IAutoFillManagerClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_b

    .line 305
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 307
    :cond_b
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 308
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    return v0
.end method

.method cancelSessionLocked(II)V
    .registers 7
    .param p1, "sessionId"    # I
    .param p2, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 447
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 448
    return-void

    .line 451
    :cond_7
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 452
    .local v0, "session":Lcom/android/server/autofill/Session;
    if-eqz v0, :cond_1a

    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-eq p2, v1, :cond_16

    goto :goto_1a

    .line 456
    :cond_16
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 457
    return-void

    .line 453
    :cond_1a
    :goto_1a
    const-string v1, "AutofillManagerServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelSessionLocked(): no session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method destroyFinishedSessionsLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1049
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1050
    .local v0, "sessionCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_3a

    .line 1051
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/Session;

    .line 1052
    .local v2, "session":Lcom/android/server/autofill/Session;
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->isSavingLocked()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1053
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_34

    const-string v3, "AutofillManagerServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destroyFinishedSessionsLocked(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_34
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    .line 1050
    .end local v2    # "session":Lcom/android/server/autofill/Session;
    :cond_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1057
    .end local v1    # "i":I
    :cond_3a
    return-void
.end method

.method destroyLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 653
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "AutofillManagerServiceImpl"

    const-string v1, "destroyLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetExtServiceLocked()V

    .line 657
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 658
    .local v0, "numSessions":I
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 659
    .local v1, "remoteFillServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/autofill/RemoteFillService;>;"
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_1b
    if-ge v3, v0, :cond_31

    .line 660
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/autofill/Session;

    invoke-virtual {v4}, Lcom/android/server/autofill/Session;->destroyLocked()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v4

    .line 661
    .local v4, "remoteFillService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v4, :cond_2e

    .line 662
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 659
    .end local v4    # "remoteFillService":Lcom/android/server/autofill/RemoteFillService;
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 665
    .end local v3    # "i":I
    :cond_31
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 666
    nop

    .local v2, "i":I
    :goto_37
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_49

    .line 667
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {v3}, Lcom/android/server/autofill/RemoteFillService;->destroy()V

    .line 666
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 670
    .end local v2    # "i":I
    :cond_49
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sendStateToClients(Z)V

    .line 671
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-eqz v2, :cond_59

    .line 672
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->kill()V

    .line 673
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 675
    :cond_59
    return-void
.end method

.method destroySessionsLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1037
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 1038
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 1039
    return-void

    .line 1041
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 1042
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    goto :goto_10

    .line 1044
    :cond_24
    return-void
.end method

.method disableAutofillForActivity(Landroid/content/ComponentName;JIZ)V
    .registers 14
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "duration"    # J
    .param p4, "sessionId"    # I
    .param p5, "compatMode"    # Z

    .line 1166
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1167
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledActivities:Landroid/util/ArrayMap;

    const/4 v2, 0x1

    if-nez v1, :cond_f

    .line 1168
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledActivities:Landroid/util/ArrayMap;

    .line 1170
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, p2

    .line 1172
    .local v3, "expiration":J
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_1f

    .line 1173
    const-wide v3, 0x7fffffffffffffffL

    .line 1175
    :cond_1f
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    const-wide/32 v5, 0x7fffffff

    cmp-long v1, p2, v5

    if-lez v1, :cond_33

    .line 1177
    const v1, 0x7fffffff

    goto :goto_34

    .line 1178
    :cond_33
    long-to-int v1, p2

    .line 1181
    .local v1, "intDuration":I
    :goto_34
    new-instance v5, Landroid/metrics/LogMaker;

    const/16 v6, 0x4d0

    invoke-direct {v5, v6}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1182
    invoke-virtual {v5, p1}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v6, 0x38c

    .line 1183
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v6, 0x479

    .line 1184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v6, 0x5b0

    .line 1185
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v5

    .line 1186
    .local v5, "log":Landroid/metrics/LogMaker;
    if-eqz p5, :cond_68

    .line 1187
    const/16 v6, 0x586

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1189
    :cond_68
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v5}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1190
    .end local v1    # "intDuration":I
    .end local v3    # "expiration":J
    .end local v5    # "log":Landroid/metrics/LogMaker;
    monitor-exit v0

    .line 1191
    return-void

    .line 1190
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method disableAutofillForApp(Ljava/lang/String;JIZ)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "sessionId"    # I
    .param p5, "compatMode"    # Z

    .line 1144
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1145
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledApps:Landroid/util/ArrayMap;

    if-nez v1, :cond_f

    .line 1146
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledApps:Landroid/util/ArrayMap;

    .line 1148
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 1150
    .local v1, "expiration":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_1f

    .line 1151
    const-wide v1, 0x7fffffffffffffffL

    .line 1153
    :cond_1f
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledApps:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, p2, v3

    if-lez v3, :cond_33

    const v3, 0x7fffffff

    goto :goto_34

    :cond_33
    long-to-int v3, p2

    .line 1155
    .local v3, "intDuration":I
    :goto_34
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v5, 0x4cf

    .line 1156
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v6

    .line 1155
    invoke-static {v5, p1, v6, p4, p5}, Lcom/android/server/autofill/Helper;->newLogMaker(ILjava/lang/String;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v6, 0x479

    .line 1157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v5

    .line 1155
    invoke-virtual {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1158
    .end local v1    # "expiration":J
    .end local v3    # "intDuration":I
    monitor-exit v0

    .line 1159
    return-void

    .line 1158
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method disableOwnedAutofillServicesLocked(I)V
    .registers 11
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 461
    const-string v0, "AutofillManagerServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableOwnedServices("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-nez v0, :cond_25

    return-void

    .line 464
    :cond_25
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 465
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, p1, :cond_5e

    .line 466
    const-string v1, "AutofillManagerServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableOwnedServices(): ignored when called by UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " instead of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-void

    .line 473
    :cond_5e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 475
    .local v1, "identity":J
    :try_start_62
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getComponentNameFromSettings()Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, "autoFillService":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 477
    .local v4, "componentName":Landroid/content/ComponentName;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 478
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v6, 0x46f

    .line 479
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 478
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->action(ILjava/lang/String;)V

    .line 480
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "autofill_service"

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 482
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroySessionsLocked()V

    goto :goto_b4

    .line 484
    :cond_91
    const-string v5, "AutofillManagerServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disableOwnedServices(): ignored because current service ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") does not match Settings ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_62 .. :try_end_b4} :catchall_b9

    .line 488
    .end local v3    # "autoFillService":Ljava/lang/String;
    .end local v4    # "componentName":Landroid/content/ComponentName;
    :goto_b4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 489
    nop

    .line 490
    return-void

    .line 488
    :catchall_b9
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 20
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 920
    move-object/from16 v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 922
    .local v3, "prefix2":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "User: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 923
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "UID: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceUidLocked()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 924
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Autofill Service Info: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 925
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-nez v4, :cond_45

    .line 926
    const-string v4, "N/A"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5c

    .line 928
    :cond_45
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 929
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v4, v3, v2}, Landroid/service/autofill/AutofillServiceInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 930
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Service Label: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 932
    :goto_5c
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Component from settings: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 933
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getComponentNameFromSettings()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Default component: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 935
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mContext:Landroid/content/Context;

    const v5, 0x104013a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 936
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Disabled: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabled:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 937
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Field classification enabled: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 939
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Compat pkgs: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 940
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getCompatibilityPackagesLocked()Landroid/util/ArrayMap;

    move-result-object v4

    .line 941
    .local v4, "compatPkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v4, :cond_af

    .line 942
    const-string v5, "N/A"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b2

    .line 944
    :cond_af
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 946
    :goto_b2
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Setup complete: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSetupComplete:Z

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 947
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Last prune: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    .line 949
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Disabled apps: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 951
    iget-object v5, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledApps:Landroid/util/ArrayMap;

    if-nez v5, :cond_de

    .line 952
    const-string v5, "N/A"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12d

    .line 954
    :cond_de
    iget-object v5, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 955
    .local v5, "size":I
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 956
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 957
    .local v8, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 958
    .local v9, "now":J
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_f1
    if-ge v11, v5, :cond_12a

    .line 959
    iget-object v12, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledApps:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 960
    .local v12, "packageName":Ljava/lang/String;
    iget-object v13, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledApps:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 961
    .local v13, "expiration":J
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ". "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    sub-long v6, v13, v9

    invoke-static {v6, v7, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 964
    const/16 v6, 0xa

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 958
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "expiration":J
    add-int/lit8 v11, v11, 0x1

    goto :goto_f1

    .line 966
    .end local v11    # "i":I
    :cond_12a
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 969
    .end local v5    # "size":I
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "now":J
    :goto_12d
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Disabled activities: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 971
    iget-object v5, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledActivities:Landroid/util/ArrayMap;

    if-nez v5, :cond_13f

    .line 972
    const-string v5, "N/A"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18e

    .line 974
    :cond_13f
    iget-object v5, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 975
    .restart local v5    # "size":I
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 976
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 977
    .local v6, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 978
    .local v7, "now":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_152
    if-ge v9, v5, :cond_18b

    .line 979
    iget-object v10, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .line 980
    .local v10, "component":Landroid/content/ComponentName;
    iget-object v11, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 981
    .local v11, "expiration":J
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ". "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    sub-long v13, v11, v7

    invoke-static {v13, v14, v6}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 984
    const/16 v13, 0xa

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 978
    .end local v10    # "component":Landroid/content/ComponentName;
    .end local v11    # "expiration":J
    add-int/lit8 v9, v9, 0x1

    goto :goto_152

    .line 986
    .end local v9    # "i":I
    :cond_18b
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 989
    .end local v5    # "size":I
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "now":J
    :goto_18e
    iget-object v5, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 990
    .restart local v5    # "size":I
    if-nez v5, :cond_19f

    .line 991
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "No sessions"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c8

    .line 993
    :cond_19f
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " sessions:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1ab
    if-ge v6, v5, :cond_1c8

    .line 995
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "#"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 996
    iget-object v7, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/autofill/Session;

    invoke-virtual {v7, v3, v2}, Lcom/android/server/autofill/Session;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 994
    add-int/lit8 v6, v6, 0x1

    goto :goto_1ab

    .line 1000
    .end local v6    # "i":I
    :cond_1c8
    :goto_1c8
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Clients: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1001
    iget-object v6, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-nez v6, :cond_1da

    .line 1002
    const-string v6, "N/A"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e2

    .line 1004
    :cond_1da
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1005
    iget-object v6, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v2, v3}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1008
    :goto_1e2
    iget-object v6, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    if-eqz v6, :cond_251

    iget-object v6, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    invoke-virtual {v6}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_251

    iget-object v6, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 1009
    invoke-virtual {v6}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1fb

    goto :goto_251

    .line 1012
    :cond_1fb
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Events of last fill response:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1015
    iget-object v6, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    invoke-virtual {v6}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 1016
    .local v6, "numEvents":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_212
    move/from16 v7, v16

    .end local v16    # "i":I
    .local v7, "i":I
    if-ge v7, v6, :cond_259

    .line 1017
    iget-object v8, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    invoke-virtual {v8}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/autofill/FillEventHistory$Event;

    .line 1018
    .local v8, "event":Landroid/service/autofill/FillEventHistory$Event;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": eventType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/service/autofill/FillEventHistory$Event;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " datasetId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    invoke-virtual {v8}, Landroid/service/autofill/FillEventHistory$Event;->getDatasetId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1018
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    .end local v8    # "event":Landroid/service/autofill/FillEventHistory$Event;
    add-int/lit8 v16, v7, 0x1

    .end local v7    # "i":I
    .restart local v16    # "i":I
    goto :goto_212

    .line 1010
    .end local v6    # "numEvents":I
    .end local v16    # "i":I
    :cond_251
    :goto_251
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "No event on last fill response"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1023
    :cond_259
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "User data: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1024
    iget-object v6, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    if-nez v6, :cond_26b

    .line 1025
    const-string v6, "N/A"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_273

    .line 1027
    :cond_26b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1028
    iget-object v6, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v6, v3, v2}, Landroid/service/autofill/UserData;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1031
    :goto_273
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Field Classification strategy: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    iget-object v6, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {v6, v3, v2}, Lcom/android/server/autofill/FieldClassificationStrategy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1033
    return-void
.end method

.method finishSessionLocked(II)V
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 423
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 424
    return-void

    .line 427
    :cond_7
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 428
    .local v0, "session":Lcom/android/server/autofill/Session;
    if-eqz v0, :cond_3d

    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-eq p2, v1, :cond_16

    goto :goto_3d

    .line 435
    :cond_16
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->logContextCommitted()V

    .line 437
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->showSaveLocked()Z

    move-result v1

    .line 438
    .local v1, "finished":Z
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_37

    const-string v2, "AutofillManagerServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishSessionLocked(): session finished on save? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_37
    if-eqz v1, :cond_3c

    .line 441
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 443
    :cond_3c
    return-void

    .line 429
    .end local v1    # "finished":Z
    :cond_3d
    :goto_3d
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_64

    .line 430
    const-string v1, "AutofillManagerServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSessionLocked(): no session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_64
    return-void
.end method

.method getAvailableFieldClassificationAlgorithms(I)[Ljava/lang/String;
    .registers 4
    .param p1, "callingUid"    # I

    .line 1256
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1257
    :try_start_3
    const-string v1, "getFCAlgorithms()"

    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1258
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1260
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_16

    .line 1261
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getAvailableAlgorithms()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1260
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method getCompatibilityPackagesLocked()Landroid/util/ArrayMap;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1070
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-eqz v0, :cond_b

    .line 1071
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getCompatibilityPackages()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0

    .line 1073
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method getDefaultFieldClassificationAlgorithm(I)Ljava/lang/String;
    .registers 4
    .param p1, "callingUid"    # I

    .line 1265
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1266
    :try_start_3
    const-string v1, "getDefaultFCAlgorithm()"

    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1267
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1269
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_16

    .line 1270
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1269
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method getFieldClassificationStrategy()Lcom/android/server/autofill/FieldClassificationStrategy;
    .registers 2

    .line 1252
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    return-object v0
.end method

.method getFillEventHistory(I)Landroid/service/autofill/FillEventHistory;
    .registers 4
    .param p1, "callingUid"    # I

    .line 865
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 866
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    if-eqz v1, :cond_13

    const-string v1, "getFillEventHistory"

    .line 867
    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 868
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    monitor-exit v0

    return-object v1

    .line 870
    :cond_13
    monitor-exit v0

    .line 871
    const/4 v0, 0x0

    return-object v0

    .line 870
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method getServiceComponentName()Landroid/content/ComponentName;
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-nez v1, :cond_a

    .line 232
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 234
    :cond_a
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v1}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 235
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method getServiceIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 687
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getServiceLabel()Ljava/lang/CharSequence;
    .registers 5

    .line 679
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 680
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 679
    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/ServiceInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v0

    .line 682
    .local v0, "label":Ljava/lang/CharSequence;
    return-object v0
.end method

.method getServiceName()Ljava/lang/CharSequence;
    .registers 6

    .line 190
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 192
    const/4 v1, 0x0

    return-object v1

    .line 196
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 197
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 198
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_18

    return-object v3

    .line 199
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_18
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AutofillManagerServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-object v0
.end method

.method getServicePackageName()Ljava/lang/String;
    .registers 3

    .line 222
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 223
    .local v0, "serviceComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_b

    .line 224
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 226
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method getUrlBarResourceIdsForCompatMode(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    iget v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->getUrlBarResourceIds(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUserData()Landroid/service/autofill/UserData;
    .registers 3

    .line 876
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 877
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    monitor-exit v0

    return-object v1

    .line 878
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getUserData(I)Landroid/service/autofill/UserData;
    .registers 4
    .param p1, "callingUid"    # I

    .line 883
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 884
    :try_start_3
    const-string v1, "getUserData"

    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 885
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    monitor-exit v0

    return-object v1

    .line 887
    :cond_f
    monitor-exit v0

    .line 888
    const/4 v0, 0x0

    return-object v0

    .line 887
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method handlePackageUpdateLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 640
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v0, :cond_13

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 641
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetExtServiceLocked()V

    .line 643
    :cond_13
    return-void
.end method

.method handleSessionSave(Lcom/android/server/autofill/Session;)V
    .registers 6
    .param p1, "session"    # Lcom/android/server/autofill/Session;

    .line 608
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_27

    .line 610
    const-string v1, "AutofillManagerServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSessionSave(): already gone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    monitor-exit v0

    return-void

    .line 614
    :cond_27
    invoke-virtual {p1}, Lcom/android/server/autofill/Session;->callSaveLocked()V

    .line 615
    monitor-exit v0

    .line 616
    return-void

    .line 615
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method isEnabledLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1136
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSetupComplete:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabled:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method isFieldClassificationEnabled(I)Z
    .registers 4
    .param p1, "callingUid"    # I

    .line 1235
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1236
    :try_start_3
    const-string/jumbo v1, "isFieldClassificationEnabled"

    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1237
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1239
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1240
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method isFieldClassificationEnabledLocked()Z
    .registers 5

    .line 1245
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1246
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_field_classification"

    iget v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    .line 1245
    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_12

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    return v3
.end method

.method listSessionsLocked(Ljava/util/ArrayList;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1061
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1062
    .local v0, "numSessions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_39

    .line 1063
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v3}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_1e

    .line 1064
    :cond_1d
    const/4 v3, 0x0

    :goto_1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1063
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1066
    .end local v1    # "i":I
    :cond_39
    return-void
.end method

.method logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;Z)V
    .registers 24
    .param p1, "sessionId"    # I
    .param p2, "clientState"    # Landroid/os/Bundle;
    .param p9, "appComponentName"    # Landroid/content/ComponentName;
    .param p10, "compatMode"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/content/ComponentName;",
            "Z)V"
        }
    .end annotation

    .line 790
    .local p3, "selectedDatasets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p5, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p6, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p7, "manuallyFilledFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p8, "manuallyFilledDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;Z)V

    .line 793
    return-void
.end method

.method logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;Z)V
    .registers 37
    .param p1, "sessionId"    # I
    .param p2, "clientState"    # Landroid/os/Bundle;
    .param p11, "appComponentName"    # Landroid/content/ComponentName;
    .param p12, "compatMode"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FieldClassification;",
            ">;",
            "Landroid/content/ComponentName;",
            "Z)V"
        }
    .end annotation

    .line 806
    .local p3, "selectedDatasets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p5, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p6, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p7, "manuallyFilledFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p8, "manuallyFilledDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local p9, "detectedFieldIdsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p10, "detectedFieldClassificationsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    .line 806
    move/from16 v4, p12

    const-string/jumbo v5, "logDatasetNotSelected()"

    invoke-direct {v0, v5, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_133

    .line 807
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_85

    .line 808
    const-string v5, "AutofillManagerServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "logContextCommitted() with FieldClassification: id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", selectedDatasets="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", ignoredDatasetIds="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p4

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", changedAutofillIds="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p5

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", changedDatasetIds="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", manuallyFilledFieldIds="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p7

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", detectedFieldIds="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", detectedFieldClassifications="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", appComponentName="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual/range {p11 .. p11}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", compatMode="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 808
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 819
    :cond_85
    move-object/from16 v7, p3

    move-object/from16 v15, p4

    move-object/from16 v14, p5

    move-object/from16 v13, p6

    move-object/from16 v12, p7

    :goto_8f
    const/4 v5, 0x0

    .line 820
    .local v5, "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    const/4 v6, 0x0

    .line 821
    .local v6, "detectedFieldClassifications":[Landroid/service/autofill/FieldClassification;
    if-eqz v2, :cond_113

    .line 822
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v5, v8, [Landroid/view/autofill/AutofillId;

    .line 823
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 824
    nop

    .line 825
    invoke-virtual/range {p10 .. p10}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v6, v8, [Landroid/service/autofill/FieldClassification;

    .line 826
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 828
    array-length v8, v5

    .line 829
    .local v8, "numberFields":I
    const/4 v9, 0x0

    .line 830
    .local v9, "totalSize":I
    const/4 v10, 0x0

    .line 831
    .local v10, "totalScore":F
    move/from16 v16, v10

    move v10, v9

    const/4 v9, 0x0

    .line 831
    .local v9, "i":I
    .local v10, "totalSize":I
    .local v16, "totalScore":F
    :goto_ad
    if-ge v9, v8, :cond_e8

    .line 832
    aget-object v11, v6, v9

    .line 833
    .local v11, "fc":Landroid/service/autofill/FieldClassification;
    invoke-virtual {v11}, Landroid/service/autofill/FieldClassification;->getMatches()Ljava/util/List;

    move-result-object v2

    .line 834
    .local v2, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/FieldClassification$Match;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 835
    .local v3, "size":I
    add-int/2addr v10, v3

    .line 836
    move/from16 v17, v16

    const/16 v16, 0x0

    .line 836
    .local v16, "j":I
    .local v17, "totalScore":F
    :goto_be
    move/from16 v20, v16

    .line 836
    .end local v16    # "j":I
    .local v20, "j":I
    move-object/from16 v21, v5

    move/from16 v5, v20

    if-ge v5, v3, :cond_dd

    .line 837
    .end local v20    # "j":I
    .local v5, "j":I
    .local v21, "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v22, v2

    move-object/from16 v2, v16

    check-cast v2, Landroid/service/autofill/FieldClassification$Match;

    .line 837
    .end local v2    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/FieldClassification$Match;>;"
    .local v22, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/FieldClassification$Match;>;"
    invoke-virtual {v2}, Landroid/service/autofill/FieldClassification$Match;->getScore()F

    move-result v2

    add-float v17, v17, v2

    .line 836
    add-int/lit8 v16, v5, 0x1

    .line 836
    .end local v5    # "j":I
    .restart local v16    # "j":I
    move-object/from16 v5, v21

    move-object/from16 v2, v22

    goto :goto_be

    .line 831
    .end local v3    # "size":I
    .end local v11    # "fc":Landroid/service/autofill/FieldClassification;
    .end local v16    # "j":I
    .end local v22    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/FieldClassification$Match;>;"
    :cond_dd
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v17

    move-object/from16 v5, v21

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    goto :goto_ad

    .line 841
    .end local v9    # "i":I
    .end local v17    # "totalScore":F
    .end local v21    # "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    .local v5, "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    .local v16, "totalScore":F
    :cond_e8
    move-object/from16 v21, v5

    .line 841
    .end local v5    # "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    .restart local v21    # "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v2, v2, v16

    int-to-float v3, v10

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 842
    .local v2, "averageScore":I
    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v5, 0x4f9

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v9

    .line 843
    move-object/from16 v11, p11

    invoke-static {v5, v11, v9, v1, v4}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v5

    .line 845
    invoke-virtual {v5, v8}, Landroid/metrics/LogMaker;->setCounterValue(I)Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v9, 0x4fa

    .line 847
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 846
    invoke-virtual {v5, v9, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 842
    invoke-virtual {v3, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 849
    .end local v2    # "averageScore":I
    .end local v8    # "numberFields":I
    .end local v10    # "totalSize":I
    .end local v16    # "totalScore":F
    move-object/from16 v5, v21

    goto :goto_115

    .line 849
    .end local v21    # "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    .restart local v5    # "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    :cond_113
    move-object/from16 v11, p11

    :goto_115
    iget-object v1, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v2, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v8, v2

    move-object/from16 v11, p2

    move-object v12, v7

    move-object v13, v15

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    invoke-direct/range {v8 .. v19}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    invoke-virtual {v1, v2}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .end local v5    # "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    .end local v6    # "detectedFieldClassifications":[Landroid/service/autofill/FieldClassification;
    goto :goto_135

    .line 855
    :cond_133
    move-object/from16 v7, p3

    :goto_135
    return-void
.end method

.method logDatasetAuthenticationSelected(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 22
    .param p1, "selectedDataset"    # Ljava/lang/String;
    .param p2, "sessionId"    # I
    .param p3, "clientState"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 743
    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 744
    :try_start_5
    const-string/jumbo v0, "logDatasetAuthenticationSelected()"
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_30

    move/from16 v3, p2

    :try_start_a
    invoke-direct {v1, v0, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 745
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v15, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v4, v15

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-direct/range {v4 .. v15}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 749
    :cond_2c
    monitor-exit v2

    .line 750
    return-void

    .line 749
    :catchall_2e
    move-exception v0

    goto :goto_33

    :catchall_30
    move-exception v0

    move/from16 v3, p2

    :goto_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_2e

    throw v0
.end method

.method logDatasetSelected(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 22
    .param p1, "selectedDataset"    # Ljava/lang/String;
    .param p2, "sessionId"    # I
    .param p3, "clientState"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 769
    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 770
    :try_start_5
    const-string/jumbo v0, "logDatasetSelected()"
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_30

    move/from16 v3, p2

    :try_start_a
    invoke-direct {v1, v0, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 771
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v15, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v4, v15

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-direct/range {v4 .. v15}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 775
    :cond_2c
    monitor-exit v2

    .line 776
    return-void

    .line 775
    :catchall_2e
    move-exception v0

    goto :goto_33

    :catchall_30
    move-exception v0

    move/from16 v3, p2

    :goto_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_2e

    throw v0
.end method

.method logSaveShown(ILandroid/os/Bundle;)V
    .registers 21
    .param p1, "sessionId"    # I
    .param p2, "clientState"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 756
    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 757
    :try_start_5
    const-string/jumbo v0, "logSaveShown()"
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_2f

    move/from16 v3, p1

    :try_start_a
    invoke-direct {v1, v0, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 758
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v15, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v4, v15

    move-object/from16 v7, p2

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-direct/range {v4 .. v15}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 761
    :cond_2b
    monitor-exit v2

    .line 762
    return-void

    .line 761
    :catchall_2d
    move-exception v0

    goto :goto_32

    :catchall_2f
    move-exception v0

    move/from16 v3, p1

    :goto_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_2d

    throw v0
.end method

.method onPendingSaveUi(ILandroid/os/IBinder;)V
    .registers 8
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 619
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_23

    const-string v0, "AutofillManagerServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPendingSaveUi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_23
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 621
    :try_start_26
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 622
    .local v1, "sessionCount":I
    add-int/lit8 v2, v1, -0x1

    .line 622
    .local v2, "i":I
    :goto_2e
    if-ltz v2, :cond_46

    .line 623
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/Session;

    .line 624
    .local v3, "session":Lcom/android/server/autofill/Session;
    invoke-virtual {v3, p2}, Lcom/android/server/autofill/Session;->isSaveUiPendingForTokenLocked(Landroid/os/IBinder;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 625
    invoke-virtual {v3, p1, p2}, Lcom/android/server/autofill/Session;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 626
    monitor-exit v0

    return-void

    .line 622
    .end local v3    # "session":Lcom/android/server/autofill/Session;
    :cond_43
    add-int/lit8 v2, v2, -0x1

    goto :goto_2e

    .line 629
    .end local v1    # "sessionCount":I
    .end local v2    # "i":I
    :cond_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_26 .. :try_end_47} :catchall_72

    .line 630
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_71

    .line 631
    const-string v0, "AutofillManagerServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No pending Save UI for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/view/autofill/AutofillManager;

    const-string v3, "PENDING_UI_OPERATION_"

    .line 632
    invoke-static {v2, v3, p1}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 631
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_71
    return-void

    .line 629
    :catchall_72
    move-exception v1

    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v1
.end method

.method removeClientLocked(Landroid/view/autofill/IAutoFillManagerClient;)V
    .registers 3
    .param p1, "client"    # Landroid/view/autofill/IAutoFillManagerClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_9

    .line 314
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 316
    :cond_9
    return-void
.end method

.method removeSessionLocked(I)V
    .registers 3
    .param p1, "sessionId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 604
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 605
    return-void
.end method

.method resetExtServiceLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 647
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_c

    const-string v0, "AutofillManagerServiceImpl"

    const-string/jumbo v1, "reset autofill service."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_c
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->reset()V

    .line 649
    return-void
.end method

.method resetLastResponse()V
    .registers 3

    .line 704
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 705
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 706
    monitor-exit v0

    .line 707
    return-void

    .line 706
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method restoreSession(IILandroid/os/IBinder;Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "sessionId"    # I
    .param p2, "uid"    # I
    .param p3, "activityToken"    # Landroid/os/IBinder;
    .param p4, "appCallback"    # Landroid/os/IBinder;

    .line 566
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 568
    .local v0, "session":Lcom/android/server/autofill/Session;
    if-eqz v0, :cond_14

    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-eq p2, v1, :cond_f

    goto :goto_14

    .line 571
    :cond_f
    invoke-virtual {v0, p3, p4}, Lcom/android/server/autofill/Session;->switchActivity(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 572
    const/4 v1, 0x1

    return v1

    .line 569
    :cond_14
    :goto_14
    const/4 v1, 0x0

    return v1
.end method

.method setAuthenticationResultLocked(Landroid/os/Bundle;III)V
    .registers 7
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "sessionId"    # I
    .param p3, "authenticationId"    # I
    .param p4, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 321
    return-void

    .line 323
    :cond_7
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 324
    .local v0, "session":Lcom/android/server/autofill/Session;
    if-eqz v0, :cond_18

    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-ne p4, v1, :cond_18

    .line 325
    invoke-virtual {v0, p1, p3}, Lcom/android/server/autofill/Session;->setAuthenticationResultLocked(Landroid/os/Bundle;I)V

    .line 327
    :cond_18
    return-void
.end method

.method setAuthenticationSelected(ILandroid/os/Bundle;)V
    .registers 21
    .param p1, "sessionId"    # I
    .param p2, "clientState"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 729
    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 730
    :try_start_5
    const-string/jumbo v0, "setAuthenticationSelected()"
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_2f

    move/from16 v3, p1

    :try_start_a
    invoke-direct {v1, v0, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 731
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v15, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v4, v15

    move-object/from16 v7, p2

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-direct/range {v4 .. v15}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 735
    :cond_2b
    monitor-exit v2

    .line 736
    return-void

    .line 735
    :catchall_2d
    move-exception v0

    goto :goto_32

    :catchall_2f
    move-exception v0

    move/from16 v3, p1

    :goto_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_2d

    throw v0
.end method

.method setAutofillFailureLocked(IILjava/util/List;)V
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 410
    .local p3, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 411
    return-void

    .line 413
    :cond_7
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 414
    .local v0, "session":Lcom/android/server/autofill/Session;
    if-eqz v0, :cond_1a

    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-eq p2, v1, :cond_16

    goto :goto_1a

    .line 418
    :cond_16
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/Session;->setAutofillFailureLocked(Ljava/util/List;)V

    .line 419
    return-void

    .line 415
    :cond_1a
    :goto_1a
    const-string v1, "AutofillManagerServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAutofillFailure(): no session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void
.end method

.method setHasCallback(IIZ)V
    .registers 7
    .param p1, "sessionId"    # I
    .param p2, "uid"    # I
    .param p3, "hasIt"    # Z

    .line 330
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 331
    return-void

    .line 333
    :cond_7
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 334
    .local v0, "session":Lcom/android/server/autofill/Session;
    if-eqz v0, :cond_20

    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-ne p2, v1, :cond_20

    .line 335
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 336
    :try_start_18
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/Session;->setHasCallbackLocked(Z)V

    .line 337
    monitor-exit v1

    goto :goto_20

    :catchall_1d
    move-exception v2

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1d

    throw v2

    .line 339
    :cond_20
    :goto_20
    return-void
.end method

.method setLastResponse(ILandroid/service/autofill/FillResponse;)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "response"    # Landroid/service/autofill/FillResponse;

    .line 695
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 696
    :try_start_3
    new-instance v1, Landroid/service/autofill/FillEventHistory;

    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/service/autofill/FillEventHistory;-><init>(ILandroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 697
    monitor-exit v0

    .line 698
    return-void

    .line 697
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method setUserData(ILandroid/service/autofill/UserData;)V
    .registers 9
    .param p1, "callingUid"    # I
    .param p2, "userData"    # Landroid/service/autofill/UserData;

    .line 893
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 894
    :try_start_3
    const-string/jumbo v1, "setUserData"

    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 895
    monitor-exit v0

    return-void

    .line 897
    :cond_e
    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    .line 899
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    if-nez v1, :cond_16

    const/4 v1, 0x0

    goto :goto_1d

    :cond_16
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v1}, Landroid/service/autofill/UserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    .line 902
    .local v1, "numberFields":I
    :goto_1d
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v4, 0x4f8

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 903
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v3

    const/16 v4, 0x392

    .line 904
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 902
    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 905
    .end local v1    # "numberFields":I
    monitor-exit v0

    .line 906
    return-void

    .line 905
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method startSessionLocked(Landroid/os/IBinder;ILandroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;ZLandroid/content/ComponentName;ZZI)I
    .registers 29
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "uid"    # I
    .param p3, "appCallbackToken"    # Landroid/os/IBinder;
    .param p4, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p5, "virtualBounds"    # Landroid/graphics/Rect;
    .param p6, "value"    # Landroid/view/autofill/AutofillValue;
    .param p7, "hasCallback"    # Z
    .param p8, "componentName"    # Landroid/content/ComponentName;
    .param p9, "compatMode"    # Z
    .param p10, "bindInstantServiceAllowed"    # Z
    .param p11, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v10, p0

    .line 347
    move/from16 v11, p11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_c

    .line 348
    const/4 v0, 0x0

    return v0

    .line 351
    :cond_c
    invoke-virtual/range {p8 .. p8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v12

    .line 353
    .local v12, "shortComponentName":Ljava/lang/String;
    move-object/from16 v13, p8

    invoke-direct {v10, v13}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isAutofillDisabledLocked(Landroid/content/ComponentName;)Z

    move-result v0

    const/high16 v14, -0x80000000

    if-eqz v0, :cond_66

    .line 354
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_3a

    .line 355
    const-string v0, "AutofillManagerServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startSession("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): ignored because disabled by service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_3a
    nop

    .line 360
    invoke-static/range {p3 .. p3}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v0

    move-object v1, v0

    .line 362
    .local v1, "client":Landroid/view/autofill/IAutoFillManagerClient;
    const/4 v0, 0x4

    :try_start_41
    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(I)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_45

    .line 365
    goto :goto_65

    .line 363
    :catch_45
    move-exception v0

    move-object v2, v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AutofillManagerServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not notify "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " that it\'s disabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_65
    return v14

    .line 370
    .end local v1    # "client":Landroid/view/autofill/IAutoFillManagerClient;
    :cond_66
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_8c

    const-string v0, "AutofillManagerServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startSession(): token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 373
    :cond_8c
    move-object/from16 v15, p1

    :goto_8e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->pruneAbandonedSessionsLocked()V

    .line 375
    move-object v1, v10

    move-object v2, v15

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p7

    move-object v6, v13

    move/from16 v7, p9

    move/from16 v8, p10

    move v9, v11

    invoke-direct/range {v1 .. v9}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->createSessionByTokenLocked(Landroid/os/IBinder;ILandroid/os/IBinder;ZLandroid/content/ComponentName;ZZI)Lcom/android/server/autofill/Session;

    move-result-object v0

    .line 377
    .local v0, "newSession":Lcom/android/server/autofill/Session;
    if-nez v0, :cond_a6

    .line 378
    return v14

    .line 381
    :cond_a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p2

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " a="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 383
    invoke-virtual {v2}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p4

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p5

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p7

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 386
    .local v6, "historyItem":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRequestsHistory:Landroid/util/LocalLog;

    invoke-virtual {v1, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 388
    const/4 v5, 0x1

    move-object v1, v0

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, p6

    move-object/from16 v16, v6

    move v6, v11

    .line 388
    .end local v6    # "historyItem":Ljava/lang/String;
    .local v16, "historyItem":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/autofill/Session;->updateLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 390
    iget v1, v0, Lcom/android/server/autofill/Session;->id:I

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutofillManagerServiceImpl: [userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-eqz v1, :cond_23

    .line 1277
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v1}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1275
    return-object v0
.end method

.method updateLocked(Z)V
    .registers 12
    .param p1, "disabled"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 251
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    .line 252
    .local v0, "wasEnabled":Z
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_45

    .line 253
    const-string v1, "AutofillManagerServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLocked(u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): wasEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mSetupComplete= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSetupComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", disabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mDisabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_45
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isSetupCompletedLocked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSetupComplete:Z

    .line 258
    iput-boolean p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabled:Z

    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, "serviceComponent":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 261
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getComponentNameFromSettings()Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "componentName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_a3

    .line 264
    :try_start_5a
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    move-object v1, v4

    .line 265
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iget v6, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-interface {v4, v1, v5, v6}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    move-object v2, v4

    .line 267
    if-nez v2, :cond_82

    .line 268
    const-string v4, "AutofillManagerServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad AutofillService name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_82} :catch_83
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_82} :catch_83

    .line 273
    :cond_82
    goto :goto_a3

    .line 270
    :catch_83
    move-exception v4

    .line 271
    .local v4, "e":Ljava/lang/Exception;
    const-string v6, "AutofillManagerServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error getting service info for \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\': "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v2, 0x0

    .line 276
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a3
    :goto_a3
    const/4 v4, 0x0

    if-eqz v2, :cond_da

    .line 277
    :try_start_a6
    new-instance v6, Landroid/service/autofill/AutofillServiceInfo;

    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-direct {v6, v7, v1, v8}, Landroid/service/autofill/AutofillServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iput-object v6, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 278
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_105

    const-string v6, "AutofillManagerServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set component for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_105

    .line 285
    :catch_d8
    move-exception v6

    goto :goto_106

    .line 280
    :cond_da
    iput-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 281
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_105

    .line 282
    const-string v6, "AutofillManagerServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reset component for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_105} :catch_d8

    .line 288
    :cond_105
    :goto_105
    goto :goto_127

    .line 285
    :goto_106
    nop

    .line 286
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "AutofillManagerServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad AutofillServiceInfo for \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iput-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 289
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_127
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v4

    .line 290
    .local v4, "isEnabled":Z
    if-eq v0, v4, :cond_14a

    .line 291
    if-nez v4, :cond_147

    .line 292
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 293
    .local v6, "sessionCount":I
    add-int/lit8 v7, v6, -0x1

    .line 293
    .local v7, "i":I
    :goto_137
    if-ltz v7, :cond_147

    .line 294
    iget-object v8, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/autofill/Session;

    .line 295
    .local v8, "session":Lcom/android/server/autofill/Session;
    invoke-virtual {v8}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 293
    .end local v8    # "session":Lcom/android/server/autofill/Session;
    add-int/lit8 v7, v7, -0x1

    goto :goto_137

    .line 298
    .end local v6    # "sessionCount":I
    .end local v7    # "i":I
    :cond_147
    invoke-direct {p0, v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sendStateToClients(Z)V

    .line 300
    :cond_14a
    return-void
.end method

.method updateSessionLocked(IILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)Z
    .registers 16
    .param p1, "sessionId"    # I
    .param p2, "uid"    # I
    .param p3, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p4, "virtualBounds"    # Landroid/graphics/Rect;
    .param p5, "value"    # Landroid/view/autofill/AutofillValue;
    .param p6, "action"    # I
    .param p7, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 583
    .local v0, "session":Lcom/android/server/autofill/Session;
    const/4 v7, 0x0

    if-eqz v0, :cond_1a

    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-eq v1, p2, :cond_10

    goto :goto_1a

    .line 598
    :cond_10
    move-object v1, v0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/autofill/Session;->updateLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 599
    return v7

    .line 584
    :cond_1a
    :goto_1a
    and-int/lit8 v1, p7, 0x1

    if-eqz v1, :cond_43

    .line 585
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_41

    .line 586
    const-string v1, "AutofillManagerServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restarting session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " due to manual request on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_41
    const/4 v1, 0x1

    return v1

    .line 591
    :cond_43
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_6b

    .line 592
    const-string v1, "AutofillManagerServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSessionLocked(): session gone for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_6b
    return v7
.end method
