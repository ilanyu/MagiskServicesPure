.class public Lcom/android/server/pm/PackageInstallerSession;
.super Landroid/content/pm/IPackageInstallerSession$Stub;
.source "PackageInstallerSession.java"


# static fields
.field private static final ATTR_ABI_OVERRIDE:Ljava/lang/String; = "abiOverride"

.field private static final ATTR_APP_ICON:Ljava/lang/String; = "appIcon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_APP_LABEL:Ljava/lang/String; = "appLabel"

.field private static final ATTR_APP_PACKAGE_NAME:Ljava/lang/String; = "appPackageName"

.field private static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field private static final ATTR_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "installerPackageName"

.field private static final ATTR_INSTALLER_UID:Ljava/lang/String; = "installerUid"

.field private static final ATTR_INSTALL_FLAGS:Ljava/lang/String; = "installFlags"

.field private static final ATTR_INSTALL_LOCATION:Ljava/lang/String; = "installLocation"

.field private static final ATTR_INSTALL_REASON:Ljava/lang/String; = "installRason"

.field private static final ATTR_MODE:Ljava/lang/String; = "mode"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_ORIGINATING_UID:Ljava/lang/String; = "originatingUid"

.field private static final ATTR_ORIGINATING_URI:Ljava/lang/String; = "originatingUri"

.field private static final ATTR_PREPARED:Ljava/lang/String; = "prepared"

.field private static final ATTR_REFERRER_URI:Ljava/lang/String; = "referrerUri"

.field private static final ATTR_SEALED:Ljava/lang/String; = "sealed"

.field private static final ATTR_SESSION_ID:Ljava/lang/String; = "sessionId"

.field private static final ATTR_SESSION_STAGE_CID:Ljava/lang/String; = "sessionStageCid"

.field private static final ATTR_SESSION_STAGE_DIR:Ljava/lang/String; = "sessionStageDir"

.field private static final ATTR_SIZE_BYTES:Ljava/lang/String; = "sizeBytes"

.field private static final ATTR_USER_ID:Ljava/lang/String; = "userId"

.field private static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field private static final LOGD:Z = true

.field private static final MSG_COMMIT:I = 0x1

.field private static final MSG_EARLY_BIND:I = 0x0

.field private static final MSG_ON_PACKAGE_INSTALLED:I = 0x2

.field private static final PROPERTY_NAME_INHERIT_NATIVE:Ljava/lang/String; = "pi.inherit_native_on_dont_kill"

.field private static final REMOVE_SPLIT_MARKER_EXTENSION:Ljava/lang/String; = ".removed"

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"

.field private static final TAG_GRANTED_RUNTIME_PERMISSION:Ljava/lang/String; = "granted-runtime-permission"

.field static final TAG_SESSION:Ljava/lang/String; = "session"

.field private static final sAddedFilter:Ljava/io/FileFilter;

.field private static final sRemovedFilter:Ljava/io/FileFilter;


# instance fields
.field final createdMillis:J

.field final defaultContainerGid:I

.field private final mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mBridges:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/FileBridge;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field private mClientProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCommitted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mFds:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/RevocableFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mFinalMessage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mFinalStatus:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private mInheritedFilesBase:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mInstallerPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mInstallerUid:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mInternalProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mOriginalInstallerUid:I

.field private mPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPermissionsManuallyAccepted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private mPrepared:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRelinquished:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mReportedProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mResolvedBaseFile:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mResolvedInheritedFiles:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolvedInstructionSets:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolvedNativeLibPaths:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolvedStageDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mResolvedStagedFiles:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mSealed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mStatistic:Lcom/android/server/pm/InstallationStatistic;

.field private mVersionCode:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final params:Landroid/content/pm/PackageInstaller$SessionParams;

.field final sessionId:I

.field final stageCid:Ljava/lang/String;

.field final stageDir:Ljava/io/File;

.field final userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 270
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    .line 281
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$2;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;IILjava/lang/String;ILandroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;ZZ)V
    .registers 34
    .param p1, "callback"    # Lcom/android/server/pm/PackageInstallerService$InternalCallback;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "sessionId"    # I
    .param p6, "userId"    # I
    .param p7, "installerPackageName"    # Ljava/lang/String;
    .param p8, "installerUid"    # I
    .param p9, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p10, "createdMillis"    # J
    .param p12, "stageDir"    # Ljava/io/File;
    .param p13, "stageCid"    # Ljava/lang/String;
    .param p14, "prepared"    # Z
    .param p15, "sealed"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    .line 427
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;-><init>()V

    .line 180
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 182
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 195
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 197
    iput v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 200
    iput v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 202
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 208
    iput-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 210
    iput-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    .line 212
    iput-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    .line 214
    iput-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 218
    iput-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 226
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    .line 228
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    .line 243
    new-instance v7, Lcom/android/server/pm/InstallationStatistic;

    invoke-direct {v7}, Lcom/android/server/pm/InstallationStatistic;-><init>()V

    iput-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mStatistic:Lcom/android/server/pm/InstallationStatistic;

    .line 259
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    .line 261
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 263
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    .line 265
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    .line 290
    new-instance v7, Lcom/android/server/pm/PackageInstallerSession$3;

    invoke-direct {v7, v1}, Lcom/android/server/pm/PackageInstallerSession$3;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    iput-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 428
    move-object/from16 v7, p1

    iput-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 429
    move-object/from16 v8, p2

    iput-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 430
    move-object/from16 v9, p3

    iput-object v9, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 431
    new-instance v10, Landroid/os/Handler;

    iget-object v11, v1, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    move-object/from16 v12, p4

    invoke-direct {v10, v12, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v10, v1, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 434
    iget-object v10, v1, Lcom/android/server/pm/PackageInstallerSession;->mStatistic:Lcom/android/server/pm/InstallationStatistic;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iput-wide v13, v10, Lcom/android/server/pm/InstallationStatistic;->timeBeginInstall:J

    .line 435
    const-string v10, "InstallationStatistic"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "beginInstallSession: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iput v2, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 439
    move/from16 v10, p6

    iput v10, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 440
    iput v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    .line 441
    move-object/from16 v11, p7

    iput-object v11, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    .line 442
    iput v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 443
    iput-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 444
    move-wide/from16 v13, p10

    iput-wide v13, v1, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    .line 445
    iput-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 446
    iput-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 448
    if-nez v5, :cond_be

    const/4 v15, 0x1

    goto :goto_bf

    :cond_be
    move v15, v0

    :goto_bf
    if-nez v6, :cond_c3

    const/4 v0, 0x1

    nop

    :cond_c3
    if-eq v15, v0, :cond_115

    .line 453
    move/from16 v15, p14

    iput-boolean v15, v1, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 455
    if-eqz p15, :cond_e4

    .line 456
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 458
    :try_start_ce
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->sealAndValidateLocked()V
    :try_end_d1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_ce .. :try_end_d1} :catch_d6
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_d6
    .catchall {:try_start_ce .. :try_end_d1} :catchall_d4

    .line 462
    nop

    .line 463
    :try_start_d2
    monitor-exit v2

    goto :goto_e4

    :catchall_d4
    move-exception v0

    goto :goto_e2

    .line 459
    :catch_d6
    move-exception v0

    move-object/from16 v16, v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 461
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 463
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e2
    monitor-exit v2
    :try_end_e3
    .catchall {:try_start_d2 .. :try_end_e3} :catchall_d4

    throw v0

    .line 466
    :cond_e4
    :goto_e4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 468
    .local v2, "identity":J
    :try_start_e8
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v5, "com.android.defcontainer"

    const/high16 v6, 0x100000

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 470
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v5

    iput v5, v1, Lcom/android/server/pm/PackageInstallerSession;->defaultContainerGid:I
    :try_end_f9
    .catchall {:try_start_e8 .. :try_end_f9} :catchall_110

    .line 472
    .end local v0    # "uid":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 473
    nop

    .line 475
    iget v0, v4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_10f

    .line 476
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 478
    :cond_10f
    return-void

    .line 472
    :catchall_110
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 449
    .end local v2    # "identity":J
    :cond_115
    move/from16 v15, p14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Exactly one of stageDir or stageCid stage must be set"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 123
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->earlyBindToDefContainer()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->commitLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/PackageInstallerSession;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/PackageInstallerSession;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 123
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/PackageInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->validateInstallLocked(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/PackageInstallerSession;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 123
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    return-void
.end method

.method private assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "apk"    # Landroid/content/pm/PackageParser$ApkLite;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1398
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_98

    .line 1402
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_46

    .line 1403
    :cond_1e
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " specified package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " inconsistent with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1407
    :cond_46
    :goto_46
    iget-wide v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    invoke-virtual {p2}, Landroid/content/pm/PackageParser$ApkLite;->getLongVersionCode()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_72

    .line 1412
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, p2, Landroid/content/pm/PackageParser$ApkLite;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageParser$SigningDetails;->signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1416
    return-void

    .line 1413
    :cond_5b
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " signatures are inconsistent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1408
    :cond_72
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " version code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " inconsistent with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1399
    :cond_98
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " inconsistent with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private assertCallerIsOwnerOrRootLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 817
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 818
    .local v0, "callingUid":I
    if-eqz v0, :cond_22

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v0, v1, :cond_b

    goto :goto_22

    .line 819
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session does not belong to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 821
    :cond_22
    :goto_22
    return-void
.end method

.method private assertNoWriteFileTransfersOpenLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 829
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RevocableFileDescriptor;

    .line 830
    .local v1, "fd":Landroid/os/RevocableFileDescriptor;
    invoke-virtual {v1}, Landroid/os/RevocableFileDescriptor;->isRevoked()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 833
    .end local v1    # "fd":Landroid/os/RevocableFileDescriptor;
    goto :goto_6

    .line 831
    .restart local v1    # "fd":Landroid/os/RevocableFileDescriptor;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Files still open"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    .end local v1    # "fd":Landroid/os/RevocableFileDescriptor;
    :cond_21
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/FileBridge;

    .line 835
    .local v1, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v1}, Landroid/os/FileBridge;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 838
    .end local v1    # "bridge":Landroid/os/FileBridge;
    goto :goto_27

    .line 836
    .restart local v1    # "bridge":Landroid/os/FileBridge;
    :cond_3a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Files still open"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    .end local v1    # "bridge":Landroid/os/FileBridge;
    :cond_42
    return-void
.end method

.method private assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "cookie"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 536
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 537
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    if-nez v0, :cond_8

    .line 540
    return-void

    .line 538
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not allowed after commit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "cookie"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 544
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    if-eqz v0, :cond_20

    .line 547
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v0, :cond_9

    .line 550
    return-void

    .line 548
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not allowed after destruction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " before prepared"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertPreparedAndNotSealedLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "cookie"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 528
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    .line 529
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-nez v0, :cond_8

    .line 532
    return-void

    .line 530
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not allowed after sealing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static buildAppIconFile(ILjava/io/File;)Ljava/io/File;
    .registers 5
    .param p0, "sessionId"    # I
    .param p1, "sessionsDir"    # Ljava/io/File;

    .line 1729
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_icon."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private closeInternal(Z)V
    .registers 5
    .param p1, "checkCaller"    # Z

    .line 1590
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1591
    if-eqz p1, :cond_b

    .line 1592
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    goto :goto_b

    .line 1596
    :catchall_9
    move-exception v1

    goto :goto_1b

    .line 1595
    :cond_b
    :goto_b
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 1596
    .local v1, "activeCount":I
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_9

    .line 1598
    if-nez v1, :cond_1a

    .line 1599
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 1601
    :cond_1a
    return-void

    .line 1596
    .end local v1    # "activeCount":I
    :goto_1b
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_9

    throw v1
.end method

.method private commitLocked()V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 996
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    const/16 v1, -0x6e

    if-nez v0, :cond_15e

    .line 999
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v0, :cond_156

    .line 1003
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->needToAskForPermissionsLocked()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1010
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.CONFIRM_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1012
    const-string v1, "android.content.pm.extra.SESSION_ID"

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1014
    :try_start_3a
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageInstallObserver2;->onUserActionRequired(Landroid/content/Intent;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_40

    .line 1016
    goto :goto_41

    .line 1015
    :catch_40
    move-exception v1

    .line 1020
    :goto_41
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->closeInternal(Z)V

    .line 1021
    return-void

    .line 1026
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_46
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_113

    .line 1028
    :try_start_4e
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 1029
    .local v0, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v1

    .line 1031
    .local v1, "toDir":Ljava/io/File;
    const-string v3, "PackageInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inherited files: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_82

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    if-eqz v3, :cond_79

    goto :goto_82

    .line 1033
    :cond_79
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "mInheritedFilesBase == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1036
    :cond_82
    :goto_82
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->isLinkPossible(Ljava/util/List;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_105

    .line 1037
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9d

    .line 1038
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "oat"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1039
    .local v3, "oatDir":Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-direct {p0, v4, v3}, Lcom/android/server/pm/PackageInstallerSession;->createOatDirs(Ljava/util/List;Ljava/io/File;)V

    .line 1042
    .end local v3    # "oatDir":Ljava/io/File;
    :cond_9d
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ff

    .line 1043
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ab
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ff

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1045
    .local v4, "libPath":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 1046
    .local v5, "splitIndex":I
    if-ltz v5, :cond_e8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    if-lt v5, v6, :cond_c7

    goto :goto_e8

    .line 1051
    :cond_c7
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1052
    .local v6, "libDirPath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1053
    .local v7, "libDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_d9

    .line 1054
    invoke-static {v7}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 1056
    :cond_d9
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1057
    .local v8, "archDirPath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 1059
    .end local v4    # "libPath":Ljava/lang/String;
    .end local v5    # "splitIndex":I
    .end local v6    # "libDirPath":Ljava/lang/String;
    .end local v7    # "libDir":Ljava/io/File;
    .end local v8    # "archDirPath":Ljava/lang/String;
    goto :goto_ab

    .line 1047
    .restart local v4    # "libPath":Ljava/lang/String;
    .restart local v5    # "splitIndex":I
    :cond_e8
    :goto_e8
    const-string v6, "PackageInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping native library creation for linking due to invalid path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    goto :goto_ab

    .line 1061
    .end local v4    # "libPath":Ljava/lang/String;
    .end local v5    # "splitIndex":I
    :cond_ff
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V

    goto :goto_108

    .line 1065
    :cond_105
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->copyFiles(Ljava/util/List;Ljava/io/File;)V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_108} :catch_109

    .line 1070
    .end local v0    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v1    # "toDir":Ljava/io/File;
    :goto_108
    goto :goto_113

    .line 1067
    :catch_109
    move-exception v0

    .line 1068
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x4

    const-string v3, "Failed to inherit existing install"

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1074
    .end local v0    # "e":Ljava/io/IOException;
    :cond_113
    :goto_113
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 1075
    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 1078
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->mayInheritNativeLibs()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->extractNativeLibraries(Ljava/io/File;Ljava/lang/String;Z)V

    .line 1082
    new-instance v7, Lcom/android/server/pm/PackageInstallerSession$4;

    invoke-direct {v7, p0}, Lcom/android/server/pm/PackageInstallerSession$4;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1097
    .local v7, "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_138

    .line 1098
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1100
    .local v11, "user":Landroid/os/UserHandle;
    :goto_136
    move-object v11, v0

    goto :goto_140

    .line 1100
    .end local v11    # "user":Landroid/os/UserHandle;
    :cond_138
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_136

    .line 1103
    .restart local v11    # "user":Landroid/os/UserHandle;
    :goto_140
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    .line 1104
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    iget v10, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget-object v12, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v13, p0, Lcom/android/server/pm/PackageInstallerSession;->mStatistic:Lcom/android/server/pm/InstallationStatistic;

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/PackageManagerService;->installStage(Ljava/lang/String;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILandroid/os/UserHandle;Landroid/content/pm/PackageParser$SigningDetails;Lcom/android/server/pm/InstallationStatistic;)V

    .line 1108
    return-void

    .line 1000
    .end local v7    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    .end local v11    # "user":Landroid/os/UserHandle;
    :cond_156
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Session not sealed"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 997
    :cond_15e
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Session destroyed"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private computeProgressLocked(Z)V
    .registers 6
    .param p1, "forcePublish"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 592
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v3

    .line 593
    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 596
    if-nez p1, :cond_2d

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_38

    .line 597
    :cond_2d
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 598
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionProgressChanged(Lcom/android/server/pm/PackageInstallerSession;F)V

    .line 600
    :cond_38
    return-void
.end method

.method private static copyFiles(Ljava/util/List;Ljava/io/File;)V
    .registers 9
    .param p1, "toDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1491
    .local p0, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 1492
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1493
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1491
    .end local v3    # "file":Ljava/io/File;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1497
    :cond_1c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1498
    .local v1, "fromFile":Ljava/io/File;
    const-string v2, "inherit"

    const-string v3, ".tmp"

    invoke-static {v2, v3, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 1499
    .local v2, "tmpFile":Ljava/io/File;
    const-string v3, "PackageInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Copying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    invoke-static {v1, v2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 1504
    :try_start_58
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a4

    invoke-static {v3, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_61
    .catch Landroid/system/ErrnoException; {:try_start_58 .. :try_end_61} :catch_af

    .line 1507
    nop

    .line 1508
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1509
    .local v3, "toFile":Ljava/io/File;
    const-string v4, "PackageInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Renaming "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 1513
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v2    # "tmpFile":Ljava/io/File;
    .end local v3    # "toFile":Ljava/io/File;
    goto :goto_20

    .line 1511
    .restart local v1    # "fromFile":Ljava/io/File;
    .restart local v2    # "tmpFile":Ljava/io/File;
    .restart local v3    # "toFile":Ljava/io/File;
    :cond_90
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1505
    .end local v3    # "toFile":Ljava/io/File;
    :catch_af
    move-exception v0

    .line 1506
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to chmod "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1501
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_c7
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to copy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1514
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v2    # "tmpFile":Ljava/io/File;
    :cond_e6
    const-string v0, "PackageInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Copied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " files into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    return-void
.end method

.method private createOatDirs(Ljava/util/List;Ljava/io/File;)V
    .registers 7
    .param p2, "fromDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1464
    .local p1, "instructionSets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1466
    .local v1, "instructionSet":Ljava/lang/String;
    :try_start_10
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_10 .. :try_end_1b} :catch_1d

    .line 1469
    nop

    .line 1470
    .end local v1    # "instructionSet":Ljava/lang/String;
    goto :goto_4

    .line 1467
    .restart local v1    # "instructionSet":Ljava/lang/String;
    :catch_1d
    move-exception v0

    .line 1468
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerException;->from(Lcom/android/server/pm/Installer$InstallerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v2

    throw v2

    .line 1471
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v1    # "instructionSet":Ljava/lang/String;
    :cond_23
    return-void
.end method

.method private createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "markerName":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 640
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 641
    .local v1, "target":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 642
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 645
    .end local v0    # "markerName":Ljava/lang/String;
    .end local v1    # "target":Ljava/io/File;
    nop

    .line 646
    return-void

    .line 638
    .restart local v0    # "markerName":Ljava/lang/String;
    :cond_2d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid marker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_44
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_44} :catch_44

    .line 643
    .end local v0    # "markerName":Ljava/lang/String;
    :catch_44
    move-exception v0

    .line 644
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private destroyInternal()V
    .registers 4

    .line 1655
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1656
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 1657
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 1660
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RevocableFileDescriptor;

    .line 1661
    .local v2, "fd":Landroid/os/RevocableFileDescriptor;
    invoke-virtual {v2}, Landroid/os/RevocableFileDescriptor;->revoke()V

    .line 1662
    .end local v2    # "fd":Landroid/os/RevocableFileDescriptor;
    goto :goto_e

    .line 1663
    :cond_1e
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/FileBridge;

    .line 1664
    .local v2, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v2}, Landroid/os/FileBridge;->forceClose()V

    .line 1665
    .end local v2    # "bridge":Landroid/os/FileBridge;
    goto :goto_24

    .line 1666
    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_49

    .line 1667
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v0, :cond_48

    .line 1669
    :try_start_39
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)V
    :try_end_46
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_39 .. :try_end_46} :catch_47

    .line 1671
    goto :goto_48

    .line 1670
    :catch_47
    move-exception v0

    .line 1673
    :cond_48
    :goto_48
    return-void

    .line 1666
    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1
.end method

.method private dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "returnCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1621
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1622
    :try_start_3
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    .line 1623
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    .line 1625
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 1626
    .local v1, "observer":Landroid/content/pm/IPackageInstallObserver2;
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1627
    .local v2, "packageName":Ljava/lang/String;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_4f

    .line 1629
    if-eqz v1, :cond_26

    .line 1633
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1634
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1635
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1636
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1637
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1638
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1640
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1643
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_26
    const/4 v0, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2c

    move v4, v3

    goto :goto_2d

    :cond_2c
    move v4, v0

    .line 1646
    .local v4, "success":Z
    :goto_2d
    if-eqz p3, :cond_39

    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_38

    goto :goto_39

    :cond_38
    goto :goto_3a

    :cond_39
    :goto_39
    move v0, v3

    .line 1647
    .local v0, "isNewInstall":Z
    :goto_3a
    if-eqz v4, :cond_49

    if-eqz v0, :cond_49

    .line 1648
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfo()Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/pm/PackageManagerService;->sendSessionCommitBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V

    .line 1651
    :cond_49
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v3, p0, v4}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 1652
    return-void

    .line 1627
    .end local v0    # "isNewInstall":Z
    .end local v1    # "observer":Landroid/content/pm/IPackageInstallObserver2;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "success":Z
    :catchall_4f
    move-exception v1

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method private doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .param p6, "incomingFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 670
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1686
    const-string/jumbo v0, "userId"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1687
    const-string/jumbo v0, "mOriginalInstallerUid"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1688
    const-string/jumbo v0, "mInstallerPackageName"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1689
    const-string/jumbo v0, "mInstallerUid"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1690
    const-string v0, "createdMillis"

    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1691
    const-string/jumbo v0, "stageDir"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1692
    const-string/jumbo v0, "stageCid"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1693
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1695
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1697
    const-string/jumbo v0, "mClientProgress"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1698
    const-string/jumbo v0, "mProgress"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1699
    const-string/jumbo v0, "mSealed"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1700
    const-string/jumbo v0, "mPermissionsManuallyAccepted"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1701
    const-string/jumbo v0, "mRelinquished"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1702
    const-string/jumbo v0, "mDestroyed"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1703
    const-string/jumbo v0, "mFds"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1704
    const-string/jumbo v0, "mBridges"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1705
    const-string/jumbo v0, "mFinalStatus"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1706
    const-string/jumbo v0, "mFinalMessage"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1708
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStatistic:Lcom/android/server/pm/InstallationStatistic;

    iget-object v0, v0, Lcom/android/server/pm/InstallationStatistic;->pkg:Ljava/lang/String;

    if-eqz v0, :cond_f7

    .line 1709
    const-string/jumbo v0, "mStatistic"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStatistic:Lcom/android/server/pm/InstallationStatistic;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1712
    :cond_f7
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1714
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1715
    return-void
.end method

.method private earlyBindToDefContainer()V
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->earlyBindToDefContainer()V

    .line 372
    return-void
.end method

.method private static extractNativeLibraries(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 9
    .param p0, "packageDir"    # Ljava/io/File;
    .param p1, "abiOverride"    # Ljava/lang/String;
    .param p2, "inherit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1519
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "lib"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1520
    .local v0, "libDir":Ljava/io/File;
    const/4 v1, 0x1

    if-nez p2, :cond_e

    .line 1522
    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    .line 1525
    :cond_e
    const/4 v2, 0x0

    .line 1527
    .local v2, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_f
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v3

    move-object v2, v3

    .line 1528
    invoke-static {v2, v0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result v3
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_38
    .catchall {:try_start_f .. :try_end_18} :catchall_36

    .line 1530
    .local v3, "res":I
    if-ne v3, v1, :cond_1f

    .line 1538
    .end local v3    # "res":I
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1539
    nop

    .line 1540
    return-void

    .line 1531
    .restart local v3    # "res":I
    :cond_1f
    :try_start_1f
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to extract native libraries, res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_36} :catch_38
    .catchall {:try_start_1f .. :try_end_36} :catchall_36

    .line 1538
    .end local v3    # "res":I
    :catchall_36
    move-exception v1

    goto :goto_43

    .line 1534
    :catch_38
    move-exception v1

    .line 1535
    .local v1, "e":Ljava/io/IOException;
    :try_start_39
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const/16 v4, -0x6e

    const-string v5, "Failed to extract native libraries"

    invoke-direct {v3, v4, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_36

    .line 1538
    .end local v1    # "e":Ljava/io/IOException;
    :goto_43
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private static getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "base"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1448
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1449
    .local v0, "pathStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1451
    .local v1, "baseStr":Ljava/lang/String;
    const-string v2, "/."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 1455
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1456
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1459
    :cond_1f
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " outside base: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1452
    :cond_3e
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid path (was relative) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 379
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 380
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 381
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_1d

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 382
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserAffiliatedWithDevice(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 381
    :goto_1e
    return v1
.end method

.method private isLinkPossible(Ljava/util/List;Ljava/io/File;)Z
    .registers 12
    .param p2, "toDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 1424
    .local p1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    .line 1425
    .local v1, "toStat":Landroid/system/StructStat;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 1426
    .local v3, "fromFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v4

    .line 1427
    .local v4, "fromStat":Landroid/system/StructStat;
    iget-wide v5, v4, Landroid/system/StructStat;->st_dev:J

    iget-wide v7, v1, Landroid/system/StructStat;->st_dev:J
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_25} :catch_2e

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2a

    .line 1428
    return v0

    .line 1430
    .end local v3    # "fromFile":Ljava/io/File;
    .end local v4    # "fromStat":Landroid/system/StructStat;
    :cond_2a
    goto :goto_d

    .line 1434
    .end local v1    # "toStat":Landroid/system/StructStat;
    :cond_2b
    nop

    .line 1435
    const/4 v0, 0x1

    return v0

    .line 1431
    :catch_2e
    move-exception v1

    .line 1432
    .local v1, "e":Landroid/system/ErrnoException;
    const-string v2, "PackageInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to detect if linking possible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    return v0
.end method

.method public static synthetic lambda$doWriteInternal$0(Lcom/android/server/pm/PackageInstallerSession;Landroid/system/Int64Ref;J)V
    .registers 9
    .param p1, "last"    # Landroid/system/Int64Ref;
    .param p2, "progress"    # J

    .line 750
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    .line 751
    iget-wide v0, p1, Landroid/system/Int64Ref;->value:J

    sub-long v0, p2, v0

    .line 752
    .local v0, "delta":J
    iput-wide p2, p1, Landroid/system/Int64Ref;->value:J

    .line 753
    long-to-float v2, v0

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->addClientProgress(F)V

    .line 755
    .end local v0    # "delta":J
    :cond_1a
    return-void
.end method

.method private linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    .registers 10
    .param p2, "toDir"    # Ljava/io/File;
    .param p3, "fromDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1475
    .local p1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1476
    .local v1, "fromFile":Ljava/io/File;
    invoke-static {v1, p3}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 1478
    .local v2, "relativePath":Ljava/lang/String;
    :try_start_14
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1479
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1478
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/pm/Installer;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_14 .. :try_end_23} :catch_25

    .line 1483
    nop

    .line 1484
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v2    # "relativePath":Ljava/lang/String;
    goto :goto_4

    .line 1480
    .restart local v1    # "fromFile":Ljava/io/File;
    .restart local v2    # "relativePath":Ljava/lang/String;
    :catch_25
    move-exception v0

    .line 1481
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed linkOrCreateDir("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1486
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v2    # "relativePath":Ljava/lang/String;
    :cond_52
    const-string v0, "PackageInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Linked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " files into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    return-void
.end method

.method private mayInheritNativeLibs()Z
    .registers 4

    .line 1125
    const-string/jumbo v0, "pi.inherit_native_on_dont_kill"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_19

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method private static maybeRenameFile(Ljava/io/File;Ljava/io/File;)V
    .registers 6
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1111
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1112
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2e

    .line 1113
    :cond_d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x6e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not rename file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1117
    :cond_2e
    :goto_2e
    return-void
.end method

.method private needToAskForPermissionsLocked()Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 396
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 397
    return v1

    .line 400
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "android.permission.INSTALL_PACKAGES"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 401
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    .line 403
    .local v0, "isInstallPermissionGranted":Z
    :goto_16
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v4, "android.permission.INSTALL_SELF_UPDATES"

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 404
    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_24

    move v3, v2

    goto :goto_25

    :cond_24
    move v3, v1

    .line 406
    .local v3, "isSelfUpdatePermissionGranted":Z
    :goto_25
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v5, "android.permission.INSTALL_PACKAGE_UPDATES"

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 407
    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_33

    move v4, v2

    goto :goto_34

    :cond_33
    move v4, v1

    .line 409
    .local v4, "isUpdatePermissionGranted":Z
    :goto_34
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v5, v6, v1, v7}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v5

    .line 410
    .local v5, "targetPackageUid":I
    if-nez v0, :cond_4e

    if-eqz v4, :cond_45

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4e

    :cond_45
    if-eqz v3, :cond_4c

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v5, v6, :cond_4c

    goto :goto_4e

    :cond_4c
    move v6, v1

    goto :goto_4f

    :cond_4e
    :goto_4e
    move v6, v2

    .line 413
    .local v6, "isPermissionGranted":Z
    :goto_4f
    iget v7, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-nez v7, :cond_55

    move v7, v2

    goto :goto_56

    :cond_55
    move v7, v1

    .line 414
    .local v7, "isInstallerRoot":Z
    :goto_56
    iget v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v9, 0x3e8

    if-ne v8, v9, :cond_5e

    move v8, v2

    goto :goto_5f

    :cond_5e
    move v8, v1

    .line 415
    .local v8, "isInstallerSystem":Z
    :goto_5f
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v9, v9, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_69

    move v9, v2

    goto :goto_6a

    :cond_69
    move v9, v1

    .line 420
    .local v9, "forcePermissionPrompt":Z
    :goto_6a
    if-nez v9, :cond_7a

    if-nez v6, :cond_79

    if-nez v7, :cond_79

    if-nez v8, :cond_79

    .line 421
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()Z

    move-result v10

    if-nez v10, :cond_79

    goto :goto_7a

    :cond_79
    goto :goto_7b

    .line 420
    :cond_7a
    :goto_7a
    move v1, v2

    :goto_7b
    return v1
.end method

.method private openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 800
    :try_start_0
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 803
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 804
    .local v0, "target":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 805
    .local v1, "targetFd":Ljava/io/FileDescriptor;
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v2

    .line 801
    .end local v0    # "target":Ljava/io/File;
    .end local v1    # "targetFd":Ljava/io/FileDescriptor;
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_37
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_37} :catch_37

    .line 806
    :catch_37
    move-exception v0

    .line 807
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;Ljava/io/File;)Lcom/android/server/pm/PackageInstallerSession;
    .registers 36
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "callback"    # Lcom/android/server/pm/PackageInstallerService$InternalCallback;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p4, "installerThread"    # Landroid/os/Looper;
    .param p5, "sessionsDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1846
    const-string/jumbo v1, "sessionId"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    .line 1847
    .local v1, "sessionId":I
    const-string/jumbo v2, "userId"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v15

    .line 1848
    .local v15, "userId":I
    const-string v2, "installerPackageName"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1849
    .local v12, "installerPackageName":Ljava/lang/String;
    const-string v2, "installerUid"

    const/16 v3, 0x2000

    move-object/from16 v13, p3

    invoke-virtual {v13, v12, v3, v15}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v18

    .line 1851
    .local v18, "installerUid":I
    const-string v2, "createdMillis"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v19

    .line 1852
    .local v19, "createdMillis":J
    const-string/jumbo v2, "sessionStageDir"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1853
    .local v11, "stageDirRaw":Ljava/lang/String;
    if-eqz v11, :cond_3a

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_38
    move-object v14, v2

    goto :goto_3c

    :cond_3a
    const/4 v2, 0x0

    goto :goto_38

    .line 1854
    .local v14, "stageDir":Ljava/io/File;
    :goto_3c
    const-string/jumbo v2, "sessionStageCid"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1855
    .local v21, "stageCid":Ljava/lang/String;
    const-string/jumbo v2, "prepared"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v22

    .line 1856
    .local v22, "prepared":Z
    const-string/jumbo v2, "sealed"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v23

    .line 1858
    .local v23, "sealed":Z
    new-instance v2, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object v10, v2

    .line 1860
    .local v10, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    const-string/jumbo v2, "mode"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 1861
    const-string v2, "installFlags"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1862
    const-string v2, "installLocation"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 1863
    const-string/jumbo v2, "sizeBytes"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v10, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 1864
    const-string v2, "appPackageName"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 1865
    const-string v2, "appIcon"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBitmapAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 1866
    const-string v2, "appLabel"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 1867
    const-string/jumbo v2, "originatingUri"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v10, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 1868
    const-string/jumbo v2, "originatingUid"

    .line 1869
    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v10, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 1870
    const-string/jumbo v2, "referrerUri"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v10, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 1871
    const-string v2, "abiOverride"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 1872
    const-string/jumbo v2, "volumeUuid"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 1873
    const-string v2, "installRason"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 1875
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->readGrantedRuntimePermissions(Lorg/xmlpull/v1/XmlPullParser;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 1877
    move-object/from16 v9, p5

    invoke-static {v1, v9}, Lcom/android/server/pm/PackageInstallerSession;->buildAppIconFile(ILjava/io/File;)Ljava/io/File;

    move-result-object v8

    .line 1878
    .local v8, "appIconFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 1879
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 1880
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 1883
    :cond_e9
    new-instance v24, Lcom/android/server/pm/PackageInstallerSession;

    move-object/from16 v2, v24

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v13

    move-object/from16 v6, p4

    move v7, v1

    move-object/from16 v25, v8

    move v8, v15

    .line 1883
    .end local v8    # "appIconFile":Ljava/io/File;
    .local v25, "appIconFile":Ljava/io/File;
    move-object v9, v12

    move-object/from16 v26, v10

    move/from16 v10, v18

    .line 1883
    .end local v10    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v26, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    move-object/from16 v27, v11

    move-object/from16 v11, v26

    .line 1883
    .end local v11    # "stageDirRaw":Ljava/lang/String;
    .local v27, "stageDirRaw":Ljava/lang/String;
    move-object/from16 v28, v12

    move-wide/from16 v12, v19

    .line 1883
    .end local v12    # "installerPackageName":Ljava/lang/String;
    .local v28, "installerPackageName":Ljava/lang/String;
    move/from16 v29, v15

    move-object/from16 v15, v21

    .line 1883
    .end local v15    # "userId":I
    .local v29, "userId":I
    move/from16 v16, v22

    move/from16 v17, v23

    invoke-direct/range {v2 .. v17}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;IILjava/lang/String;ILandroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;ZZ)V

    return-object v24
.end method

.method private static readGrantedRuntimePermissions(Lorg/xmlpull/v1/XmlPullParser;)[Ljava/lang/String;
    .registers 6
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1803
    const/4 v0, 0x0

    .line 1805
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1807
    .local v1, "outerDepth":I
    :cond_5
    :goto_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .line 1807
    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_3b

    const/4 v2, 0x3

    if-ne v3, v2, :cond_16

    .line 1808
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_3b

    .line 1809
    :cond_16
    if-eq v3, v2, :cond_5

    const/4 v2, 0x4

    if-ne v3, v2, :cond_1c

    .line 1810
    goto :goto_5

    .line 1812
    :cond_1c
    const-string v2, "granted-runtime-permission"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1813
    const-string/jumbo v2, "name"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1814
    .local v2, "permission":Ljava/lang/String;
    if-nez v0, :cond_37

    .line 1815
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 1817
    :cond_37
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1818
    .end local v2    # "permission":Ljava/lang/String;
    goto :goto_5

    .line 1821
    :cond_3b
    if-nez v0, :cond_3f

    .line 1822
    const/4 v2, 0x0

    return-object v2

    .line 1825
    :cond_3f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 1826
    .local v2, "permissionsArray":[Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1827
    return-object v2
.end method

.method private resolveStageDirLocked()Ljava/io/File;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    if-nez v0, :cond_15

    .line 560
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v0, :cond_d

    .line 561
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    goto :goto_15

    .line 563
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing stageDir"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    return-object v0
.end method

.method private sealAndValidateLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 913
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertNoWriteFileTransfersOpenLocked()V

    .line 914
    const-string/jumbo v0, "sealing of session"

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    const v3, 0x4000040

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 920
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    .line 922
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 928
    :try_start_1e
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->validateInstallLocked(Landroid/content/pm/PackageInfo;)V
    :try_end_21
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1e .. :try_end_21} :catch_2a
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_23

    .line 935
    nop

    .line 939
    return-void

    .line 931
    :catch_23
    move-exception v1

    .line 934
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 929
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v1

    .line 930
    .local v1, "e":Lcom/android/server/pm/PackageManagerException;
    throw v1
.end method

.method private validateInstallLocked(Landroid/content/pm/PackageInfo;)V
    .registers 30
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1145
    move-object/from16 v2, p1

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1146
    const-wide/16 v3, -0x1

    iput-wide v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 1147
    sget-object v3, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1149
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1150
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1151
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1154
    :try_start_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_409

    .line 1158
    nop

    .line 1160
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    sget-object v4, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 1161
    .local v3, "removedFiles":[Ljava/io/File;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1162
    .local v4, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_53

    .line 1163
    array-length v5, v3

    move v7, v6

    :goto_35
    if-ge v7, v5, :cond_53

    aget-object v8, v3, v7

    .line 1164
    .local v8, "removedFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1165
    .local v9, "fileName":Ljava/lang/String;
    nop

    .line 1166
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, ".removed"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    .line 1165
    invoke-virtual {v9, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1167
    .local v10, "splitName":Ljava/lang/String;
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    .end local v8    # "removedFile":Ljava/io/File;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "splitName":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    .line 1171
    :cond_53
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    sget-object v7, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    invoke-virtual {v5, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1172
    .local v5, "addedFiles":[Ljava/io/File;
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, -0x2

    if-eqz v7, :cond_71

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_69

    goto :goto_71

    .line 1173
    :cond_69
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v6, "No packages staged"

    invoke-direct {v0, v8, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1177
    :cond_71
    :goto_71
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 1178
    .local v7, "stagedSplits":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v9, v5

    move v10, v6

    :goto_78
    const/16 v11, 0x20

    if-ge v10, v9, :cond_17c

    aget-object v12, v5, v10

    .line 1182
    .local v12, "addedFile":Ljava/io/File;
    :try_start_7e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 1183
    .local v13, "begin":J
    invoke-static {v12, v11}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v11

    .line 1186
    .local v11, "apk":Landroid/content/pm/PackageParser$ApkLite;
    iget-object v15, v1, Lcom/android/server/pm/PackageInstallerSession;->mStatistic:Lcom/android/server/pm/InstallationStatistic;

    move/from16 v17, v9

    iget-wide v8, v15, Lcom/android/server/pm/InstallationStatistic;->timeCollectingCerts:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v13

    add-long v8, v8, v18

    iput-wide v8, v15, Lcom/android/server/pm/InstallationStatistic;->timeCollectingCerts:J
    :try_end_96
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_7e .. :try_end_96} :catch_176

    .line 1189
    .end local v13    # "begin":J
    nop

    .line 1188
    nop

    .line 1191
    iget-object v8, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_157

    .line 1197
    iget-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v8, :cond_ae

    .line 1198
    iget-object v8, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    iput-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1199
    invoke-virtual {v11}, Landroid/content/pm/PackageParser$ApkLite;->getLongVersionCode()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 1201
    :cond_ae
    iget-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v9, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v8, v9, :cond_b8

    .line 1202
    iget-object v8, v11, Landroid/content/pm/PackageParser$ApkLite;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1205
    :cond_b8
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8, v11}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    .line 1209
    iget-object v8, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    if-nez v8, :cond_c6

    .line 1210
    const-string v8, "base.apk"

    .line 1210
    .local v8, "targetName":Ljava/lang/String;
    goto :goto_df

    .line 1212
    .end local v8    # "targetName":Ljava/lang/String;
    :cond_c6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "split_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".apk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1214
    .restart local v8    # "targetName":Ljava/lang/String;
    :goto_df
    invoke-static {v8}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13f

    .line 1219
    new-instance v9, Ljava/io/File;

    iget-object v13, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    invoke-direct {v9, v13, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1220
    .local v9, "targetFile":Ljava/io/File;
    invoke-static {v12, v9}, Lcom/android/server/pm/PackageInstallerSession;->maybeRenameFile(Ljava/io/File;Ljava/io/File;)V

    .line 1223
    iget-object v13, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    if-nez v13, :cond_f5

    .line 1224
    iput-object v9, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1227
    :cond_f5
    iget-object v13, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    invoke-static {v12}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v13

    .line 1230
    .local v13, "dexMetadataFile":Ljava/io/File;
    if-eqz v13, :cond_137

    .line 1231
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11f

    .line 1235
    new-instance v14, Ljava/io/File;

    iget-object v15, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 1236
    invoke-static {v8}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v14, v15, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v14

    .line 1237
    .local v6, "targetDexMetadataFile":Ljava/io/File;
    iget-object v14, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    invoke-static {v13, v6}, Lcom/android/server/pm/PackageInstallerSession;->maybeRenameFile(Ljava/io/File;Ljava/io/File;)V

    .line 1238
    .end local v6    # "targetDexMetadataFile":Ljava/io/File;
    .end local v8    # "targetName":Ljava/lang/String;
    .end local v9    # "targetFile":Ljava/io/File;
    .end local v11    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v12    # "addedFile":Ljava/io/File;
    .end local v13    # "dexMetadataFile":Ljava/io/File;
    goto :goto_137

    .line 1232
    .restart local v8    # "targetName":Ljava/lang/String;
    .restart local v9    # "targetFile":Ljava/io/File;
    .restart local v11    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    .restart local v12    # "addedFile":Ljava/io/File;
    .restart local v13    # "dexMetadataFile":Ljava/io/File;
    :cond_11f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid filename: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v10, -0x2

    invoke-direct {v0, v10, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1178
    .end local v8    # "targetName":Ljava/lang/String;
    .end local v9    # "targetFile":Ljava/io/File;
    .end local v11    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v12    # "addedFile":Ljava/io/File;
    .end local v13    # "dexMetadataFile":Ljava/io/File;
    :cond_137
    :goto_137
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v17

    const/4 v6, 0x0

    const/4 v8, -0x2

    goto/16 :goto_78

    .line 1215
    .restart local v8    # "targetName":Ljava/lang/String;
    .restart local v11    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    .restart local v12    # "addedFile":Ljava/io/File;
    :cond_13f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid filename: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, -0x2

    invoke-direct {v0, v9, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1192
    .end local v8    # "targetName":Ljava/lang/String;
    :cond_157
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Split "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " was defined multiple times"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x2

    invoke-direct {v0, v8, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1187
    .end local v11    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    :catch_176
    move-exception v0

    .line 1188
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v6

    throw v6

    .line 1242
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v12    # "addedFile":Ljava/io/File;
    :cond_17c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    if-lez v6, :cond_1f9

    .line 1243
    if-eqz v2, :cond_1df

    .line 1249
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_189
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1b6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1250
    .local v9, "splitName":Ljava/lang/String;
    iget-object v10, v2, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v10, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19e

    .line 1254
    .end local v9    # "splitName":Ljava/lang/String;
    goto :goto_189

    .line 1251
    .restart local v9    # "splitName":Ljava/lang/String;
    :cond_19e
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Split not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x2

    invoke-direct {v0, v8, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1257
    .end local v9    # "splitName":Ljava/lang/String;
    :cond_1b6
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v6, :cond_1c4

    .line 1258
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1259
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 1261
    :cond_1c4
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v9, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v6, v9, :cond_1f9

    .line 1263
    :try_start_1ca
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v6, v8}, Landroid/util/apk/ApkSignatureVerifier;->plsCertsNoVerifyOnlyCerts(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;
    :try_end_1d4
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1ca .. :try_end_1d4} :catch_1d5

    .line 1269
    goto :goto_1f9

    .line 1266
    :catch_1d5
    move-exception v0

    .line 1267
    .restart local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v6, Lcom/android/server/pm/PackageManagerException;

    const-string v8, "Couldn\'t obtain signatures from base APK"

    const/4 v9, -0x2

    invoke-direct {v6, v9, v8}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 1244
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :cond_1df
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing existing base package for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x2

    invoke-direct {v0, v8, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1273
    :cond_1f9
    :goto_1f9
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    if-ne v6, v8, :cond_214

    .line 1275
    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20b

    .line 1393
    move-object/from16 v23, v3

    move-object/from16 v26, v4

    goto/16 :goto_3e0

    .line 1276
    :cond_20b
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v6, "Full install must include a base package"

    const/4 v8, -0x2

    invoke-direct {v0, v8, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1282
    :cond_214
    if-eqz v2, :cond_3eb

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3eb

    .line 1289
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    .line 1291
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_21d
    new-instance v0, Ljava/io/File;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {v0, v9}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    move-object v9, v0

    .line 1293
    .local v9, "existing":Landroid/content/pm/PackageParser$PackageLite;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1294
    .local v12, "begin":J
    new-instance v0, Ljava/io/File;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v11}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0

    move-object v10, v0

    .line 1297
    .local v10, "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mStatistic:Lcom/android/server/pm/InstallationStatistic;

    iget-wide v14, v0, Lcom/android/server/pm/InstallationStatistic;->timeCollectingCerts:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    add-long v14, v14, v16

    iput-wide v14, v0, Lcom/android/server/pm/InstallationStatistic;->timeCollectingCerts:J
    :try_end_24c
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_21d .. :try_end_24c} :catch_3e1

    .line 1300
    .end local v12    # "begin":J
    nop

    .line 1299
    nop

    .line 1302
    const-string v0, "Existing base"

    invoke-direct {v1, v0, v10}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    .line 1305
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-nez v0, :cond_276

    .line 1306
    new-instance v0, Ljava/io/File;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1307
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    iget-object v11, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1309
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1310
    invoke-static {v0}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1311
    .local v0, "baseDexMetadataFile":Ljava/io/File;
    if-eqz v0, :cond_276

    .line 1312
    iget-object v11, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1317
    .end local v0    # "baseDexMetadataFile":Ljava/io/File;
    :cond_276
    iget-object v0, v9, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b1

    .line 1318
    const/4 v0, 0x0

    .line 1318
    .local v0, "i":I
    :goto_27f
    iget-object v11, v9, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v11, v11

    if-ge v0, v11, :cond_2b1

    .line 1319
    iget-object v11, v9, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v11, v11, v0

    .line 1320
    .local v11, "splitName":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    iget-object v13, v9, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    aget-object v13, v13, v0

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1321
    .local v12, "splitFile":Ljava/io/File;
    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 1322
    .local v13, "splitRemoved":Z
    invoke-virtual {v7, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2ae

    if-nez v13, :cond_2ae

    .line 1323
    iget-object v14, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1325
    nop

    .line 1326
    invoke-static {v12}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v14

    .line 1327
    .local v14, "splitDexMetadataFile":Ljava/io/File;
    if-eqz v14, :cond_2ae

    .line 1328
    iget-object v15, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1318
    .end local v11    # "splitName":Ljava/lang/String;
    .end local v12    # "splitFile":Ljava/io/File;
    .end local v13    # "splitRemoved":Z
    .end local v14    # "splitDexMetadataFile":Ljava/io/File;
    :cond_2ae
    add-int/lit8 v0, v0, 0x1

    goto :goto_27f

    .line 1335
    .end local v0    # "i":I
    :cond_2b1
    new-instance v0, Ljava/io/File;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    .line 1336
    .local v11, "packageInstallDir":Ljava/io/File;
    iput-object v11, v1, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    .line 1337
    new-instance v0, Ljava/io/File;

    const-string/jumbo v12, "oat"

    invoke-direct {v0, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v12, v0

    .line 1338
    .local v12, "oatDir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_313

    .line 1339
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1344
    .local v0, "archSubdirs":[Ljava/io/File;
    if-eqz v0, :cond_313

    array-length v13, v0

    if-lez v13, :cond_313

    .line 1345
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v13

    .line 1346
    .local v13, "instructionSets":[Ljava/lang/String;
    array-length v14, v0

    const/4 v15, 0x0

    :goto_2de
    if-ge v15, v14, :cond_313

    aget-object v8, v0, v15

    .line 1348
    .local v8, "archSubDir":Ljava/io/File;
    move-object/from16 v20, v0

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1348
    .end local v0    # "archSubdirs":[Ljava/io/File;
    .local v20, "archSubdirs":[Ljava/io/File;
    invoke-static {v13, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ef

    .line 1349
    goto :goto_30b

    .line 1352
    :cond_2ef
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1353
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1354
    .local v0, "oatFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_30b

    .line 1355
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1346
    .end local v0    # "oatFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v8    # "archSubDir":Ljava/io/File;
    :cond_30b
    :goto_30b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v20

    move-object/from16 v2, p1

    const/4 v8, 0x1

    goto :goto_2de

    .line 1362
    .end local v13    # "instructionSets":[Ljava/lang/String;
    .end local v20    # "archSubdirs":[Ljava/io/File;
    :cond_313
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->mayInheritNativeLibs()Z

    move-result v0

    if-eqz v0, :cond_3dc

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3dc

    .line 1363
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v8, "lib"

    invoke-direct {v2, v11, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v2, v0, v8

    new-instance v2, Ljava/io/File;

    const-string/jumbo v13, "lib64"

    invoke-direct {v2, v11, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v13, 0x1

    aput-object v2, v0, v13

    move-object v2, v0

    .line 1366
    .local v2, "libDirs":[Ljava/io/File;
    array-length v13, v2

    move v14, v8

    :goto_33b
    if-ge v14, v13, :cond_3dc

    aget-object v15, v2, v14

    .line 1367
    .local v15, "libDir":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3cb

    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_354

    .line 1368
    nop

    .line 1366
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v26, v4

    goto/16 :goto_3d1

    .line 1370
    :cond_354
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v21, v0

    .line 1371
    .local v21, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {v15}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v8, v0

    move-object/from16 v22, v2

    const/4 v2, 0x0

    .line 1371
    .end local v2    # "libDirs":[Ljava/io/File;
    .local v22, "libDirs":[Ljava/io/File;
    :goto_363
    if-ge v2, v8, :cond_3bf

    move-object/from16 v23, v3

    aget-object v3, v0, v2

    .line 1372
    .local v3, "archSubDir":Ljava/io/File;
    .local v23, "removedFiles":[Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-nez v16, :cond_377

    .line 1373
    nop

    .line 1371
    move-object/from16 v25, v0

    move-object/from16 v26, v4

    move-object/from16 v3, v21

    goto :goto_3a1

    .line 1377
    :cond_377
    :try_start_377
    invoke-static {v3, v11}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v16
    :try_end_37b
    .catch Ljava/io/IOException; {:try_start_377 .. :try_end_37b} :catch_3ac

    move-object/from16 v24, v16

    .line 1383
    .local v24, "relLibPath":Ljava/lang/String;
    nop

    .line 1382
    nop

    .line 1384
    move-object/from16 v25, v0

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    move-object/from16 v26, v4

    move-object/from16 v4, v24

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1384
    .end local v24    # "relLibPath":Ljava/lang/String;
    .local v4, "relLibPath":Ljava/lang/String;
    .local v26, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_392

    .line 1385
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1387
    :cond_392
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v27, v3

    move-object/from16 v3, v21

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1371
    .end local v4    # "relLibPath":Ljava/lang/String;
    .end local v21    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v3, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :goto_3a1
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v21, v3

    move-object/from16 v3, v23

    move-object/from16 v0, v25

    move-object/from16 v4, v26

    goto :goto_363

    .line 1378
    .end local v26    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "archSubDir":Ljava/io/File;
    .local v4, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :catch_3ac
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v26, v4

    move-object/from16 v3, v21

    .line 1378
    .end local v4    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v3, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v26    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v27, "archSubDir":Ljava/io/File;
    move-object v2, v0

    .line 1379
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "PackageInstaller"

    const-string v4, "Skipping linking of native library directory!"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1381
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1382
    goto :goto_3c5

    .line 1389
    .end local v0    # "e":Ljava/io/IOException;
    .end local v23    # "removedFiles":[Ljava/io/File;
    .end local v26    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "archSubDir":Ljava/io/File;
    .local v3, "removedFiles":[Ljava/io/File;
    .restart local v4    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_3bf
    move-object/from16 v23, v3

    move-object/from16 v26, v4

    move-object/from16 v3, v21

    .line 1389
    .end local v4    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v3, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v23    # "removedFiles":[Ljava/io/File;
    .restart local v26    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3c5
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1389
    .end local v3    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v15    # "libDir":Ljava/io/File;
    goto :goto_3d1

    .line 1366
    .end local v22    # "libDirs":[Ljava/io/File;
    .end local v23    # "removedFiles":[Ljava/io/File;
    .end local v26    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "libDirs":[Ljava/io/File;
    .local v3, "removedFiles":[Ljava/io/File;
    .restart local v4    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3cb
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v26, v4

    .line 1366
    .end local v2    # "libDirs":[Ljava/io/File;
    .end local v3    # "removedFiles":[Ljava/io/File;
    .end local v4    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "libDirs":[Ljava/io/File;
    .restart local v23    # "removedFiles":[Ljava/io/File;
    .restart local v26    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3d1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v26

    const/4 v8, 0x0

    goto/16 :goto_33b

    .line 1393
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .end local v10    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .end local v11    # "packageInstallDir":Ljava/io/File;
    .end local v12    # "oatDir":Ljava/io/File;
    .end local v22    # "libDirs":[Ljava/io/File;
    .end local v23    # "removedFiles":[Ljava/io/File;
    .end local v26    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "removedFiles":[Ljava/io/File;
    .restart local v4    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3dc
    move-object/from16 v23, v3

    move-object/from16 v26, v4

    .line 1393
    .end local v3    # "removedFiles":[Ljava/io/File;
    .end local v4    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "removedFiles":[Ljava/io/File;
    .restart local v26    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3e0
    return-void

    .line 1298
    .end local v23    # "removedFiles":[Ljava/io/File;
    .end local v26    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "removedFiles":[Ljava/io/File;
    .restart local v4    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_3e1
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v26, v4

    .line 1299
    .end local v3    # "removedFiles":[Ljava/io/File;
    .end local v4    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v23    # "removedFiles":[Ljava/io/File;
    .restart local v26    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v2

    throw v2

    .line 1283
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v23    # "removedFiles":[Ljava/io/File;
    .end local v26    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "removedFiles":[Ljava/io/File;
    .restart local v4    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3eb
    move-object/from16 v23, v3

    move-object/from16 v26, v4

    .line 1283
    .end local v3    # "removedFiles":[Ljava/io/File;
    .end local v4    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "removedFiles":[Ljava/io/File;
    .restart local v26    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing existing base package for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1155
    .end local v5    # "addedFiles":[Ljava/io/File;
    .end local v7    # "stagedSplits":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "removedFiles":[Ljava/io/File;
    .end local v26    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_409
    move-exception v0

    move-object v2, v0

    .line 1156
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v3, -0x12

    const-string v4, "Failed to resolve stage location"

    invoke-direct {v2, v3, v4, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static writeGrantedRuntimePermissionsLocked(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;)V
    .registers 7
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "grantedRuntimePermissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1719
    if-eqz p1, :cond_1c

    .line 1720
    array-length v0, p1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 1721
    .local v2, "permission":Ljava/lang/String;
    const-string v3, "granted-runtime-permission"

    const/4 v4, 0x0

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1722
    const-string/jumbo v3, "name"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1723
    const-string v3, "granted-runtime-permission"

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1720
    .end local v2    # "permission":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1726
    :cond_1c
    return-void
.end method


# virtual methods
.method public abandon()V
    .registers 4

    .line 1605
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1606
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 1608
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    if-eqz v1, :cond_13

    .line 1609
    const-string v1, "PackageInstaller"

    const-string v2, "Ignoring abandon after commit relinquished control"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    monitor-exit v0

    return-void

    .line 1612
    :cond_13
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1613
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_20

    .line 1615
    const/16 v0, -0x73

    const-string v1, "Session was abandoned"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1616
    return-void

    .line 1613
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public addClientProgress(F)V
    .registers 4
    .param p1, "progress"    # F

    .line 583
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 586
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    add-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgress(F)V

    .line 587
    monitor-exit v0

    .line 588
    return-void

    .line 587
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public close()V
    .registers 2

    .line 1585
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->closeInternal(Z)V

    .line 1586
    return-void
.end method

.method public commit(Landroid/content/IntentSender;Z)V
    .registers 12
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;
    .param p2, "forTransfer"    # Z

    .line 843
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 847
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 848
    const-string v1, "commit"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 850
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 852
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()Z

    move-result v6

    iget v7, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;IZI)V

    .line 853
    .local v1, "adapter":Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->getBinder()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 855
    const/4 v2, 0x0

    if-eqz p2, :cond_3e

    .line 856
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-eq v3, v4, :cond_36

    goto :goto_44

    .line 859
    :cond_36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Session has not been transferred"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 862
    :cond_3e
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-ne v3, v4, :cond_92

    .line 867
    :goto_44
    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 868
    .local v3, "wasSealed":Z
    iget-boolean v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-nez v4, :cond_71

    .line 870
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mStatistic:Lcom/android/server/pm/InstallationStatistic;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->mStatistic:Lcom/android/server/pm/InstallationStatistic;

    iget-wide v7, v7, Lcom/android/server/pm/InstallationStatistic;->timeBeginInstall:J

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/server/pm/InstallationStatistic;->timeCopyApkConsumed:J
    :try_end_57
    .catchall {:try_start_6 .. :try_end_57} :catchall_9a

    .line 872
    :try_start_57
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->sealAndValidateLocked()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_6a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_57 .. :try_end_5a} :catch_5b
    .catchall {:try_start_57 .. :try_end_5a} :catchall_9a

    .line 880
    goto :goto_71

    .line 875
    :catch_5b
    move-exception v4

    .line 877
    .local v4, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_5c
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 878
    iget v5, v4, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {v4}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 879
    monitor-exit v0

    return-void

    .line 873
    .end local v4    # "e":Lcom/android/server/pm/PackageManagerException;
    :catch_6a
    move-exception v2

    .line 874
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 884
    .end local v2    # "e":Ljava/io/IOException;
    :cond_71
    :goto_71
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 885
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 889
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 891
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    .line 892
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 893
    .end local v1    # "adapter":Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_5c .. :try_end_8a} :catchall_9a

    .line 895
    if-nez v3, :cond_91

    .line 899
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 901
    :cond_91
    return-void

    .line 863
    .end local v3    # "wasSealed":Z
    .restart local v1    # "adapter":Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
    :cond_92
    :try_start_92
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Session has been transferred"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 893
    .end local v1    # "adapter":Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
    :catchall_9a
    move-exception v1

    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_92 .. :try_end_9c} :catchall_9a

    throw v1
.end method

.method protected doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;Z)Landroid/os/ParcelFileDescriptor;
    .registers 28
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .param p6, "incomingFd"    # Landroid/os/ParcelFileDescriptor;
    .param p7, "fdTrusted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v11, p4

    .line 682
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 683
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 684
    const-string/jumbo v0, "openWrite"

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 686
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_24

    .line 687
    new-instance v0, Landroid/os/RevocableFileDescriptor;

    invoke-direct {v0}, Landroid/os/RevocableFileDescriptor;-><init>()V

    .line 688
    .local v0, "fd":Landroid/os/RevocableFileDescriptor;
    const/4 v6, 0x0

    .line 689
    .local v6, "bridge":Landroid/os/FileBridge;
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 691
    .end local v0    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v6    # "bridge":Landroid/os/FileBridge;
    :cond_24
    const/4 v0, 0x0

    .line 692
    .restart local v0    # "fd":Landroid/os/RevocableFileDescriptor;
    new-instance v6, Landroid/os/FileBridge;

    invoke-direct {v6}, Landroid/os/FileBridge;-><init>()V

    .line 693
    .restart local v6    # "bridge":Landroid/os/FileBridge;
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    :goto_2f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v7

    move-object v13, v7

    .line 697
    .local v13, "stageDir":Ljava/io/File;
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_b .. :try_end_35} :catchall_150

    move-object v14, v0

    .line 697
    .end local v0    # "fd":Landroid/os/RevocableFileDescriptor;
    .local v14, "fd":Landroid/os/RevocableFileDescriptor;
    move-object v15, v6

    .line 701
    .end local v6    # "bridge":Landroid/os/FileBridge;
    .local v15, "bridge":Landroid/os/FileBridge;
    :try_start_37
    invoke-static/range {p1 .. p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_41
    .catch Landroid/system/ErrnoException; {:try_start_37 .. :try_end_41} :catch_14a

    move-wide v9, v5

    .line 707
    .local v9, "identity":J
    :try_start_42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_12a

    move-object v8, v0

    .line 709
    .local v8, "target":Ljava/io/File;
    :try_start_48
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 710
    nop

    .line 709
    nop

    .line 714
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget v5, Landroid/system/OsConstants;->O_CREAT:I

    sget v6, Landroid/system/OsConstants;->O_WRONLY:I

    or-int/2addr v5, v6

    const/16 v6, 0x1a4

    invoke-static {v0, v5, v6}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v7, v0

    .line 716
    .local v7, "targetFd":Ljava/io/FileDescriptor;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 720
    const-wide/16 v5, 0x0

    if-eqz v13, :cond_81

    cmp-long v0, v11, v5

    if-lez v0, :cond_81

    .line 721
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 722
    invoke-static {v5}, Lcom/android/internal/content/PackageHelper;->translateAllocateFlags(I)I

    move-result v5

    .line 721
    invoke-virtual {v0, v7, v11, v12, v5}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;JI)V

    .line 725
    :cond_81
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_8c

    .line 726
    sget v0, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v7, v3, v4, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 729
    :cond_8c
    if-eqz p6, :cond_108

    .line 730
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_a3

    const/16 v5, 0x7d0

    if-eq v0, v5, :cond_a3

    .line 737
    if-eqz p7, :cond_9b

    goto :goto_a4

    .line 738
    :cond_9b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v5, "Reverse mode only supported from shell"

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a3
    .catch Landroid/system/ErrnoException; {:try_start_48 .. :try_end_a3} :catch_14a

    .line 733
    :cond_a3
    nop

    .line 748
    :goto_a4
    :try_start_a4
    new-instance v0, Landroid/system/Int64Ref;

    const-wide/16 v5, 0x0

    invoke-direct {v0, v5, v6}, Landroid/system/Int64Ref;-><init>(J)V

    .line 749
    .local v0, "last":Landroid/system/Int64Ref;
    invoke-virtual/range {p6 .. p6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    new-instance v6, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$0Oqu1oanLjaOBEcFPtJVCRQ0lHs;

    invoke-direct {v6, v1, v0}, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$0Oqu1oanLjaOBEcFPtJVCRQ0lHs;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/system/Int64Ref;)V
    :try_end_b4
    .catchall {:try_start_a4 .. :try_end_b4} :catchall_e6

    const/16 v16, 0x0

    move-object/from16 v17, v6

    move-object v6, v7

    move-object v3, v7

    move-object/from16 v7, v17

    .end local v7    # "targetFd":Ljava/io/FileDescriptor;
    .local v3, "targetFd":Ljava/io/FileDescriptor;
    move-object v4, v8

    move-object/from16 v8, v16

    .line 749
    .end local v8    # "target":Ljava/io/File;
    .local v4, "target":Ljava/io/File;
    move-wide/from16 v18, v9

    move-wide v9, v11

    .line 749
    .end local v9    # "identity":J
    .local v18, "identity":J
    :try_start_c2
    invoke-static/range {v5 .. v10}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_e4

    .line 757
    .end local v0    # "last":Landroid/system/Int64Ref;
    :try_start_c5
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 758
    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 762
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_ce
    .catch Landroid/system/ErrnoException; {:try_start_c5 .. :try_end_ce} :catch_14a

    .line 763
    :try_start_ce
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_d8

    .line 764
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_dd

    .line 766
    :cond_d8
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 768
    :goto_dd
    monitor-exit v5

    .line 769
    nop

    .line 770
    const/4 v0, 0x0

    return-object v0

    .line 768
    :catchall_e1
    move-exception v0

    monitor-exit v5
    :try_end_e3
    .catchall {:try_start_ce .. :try_end_e3} :catchall_e1

    :goto_e3
    :try_start_e3
    throw v0

    .line 757
    :catchall_e4
    move-exception v0

    goto :goto_eb

    .line 757
    .end local v3    # "targetFd":Ljava/io/FileDescriptor;
    .end local v4    # "target":Ljava/io/File;
    .end local v18    # "identity":J
    .restart local v7    # "targetFd":Ljava/io/FileDescriptor;
    .restart local v8    # "target":Ljava/io/File;
    .restart local v9    # "identity":J
    :catchall_e6
    move-exception v0

    move-object v3, v7

    move-object v4, v8

    move-wide/from16 v18, v9

    .line 757
    .end local v7    # "targetFd":Ljava/io/FileDescriptor;
    .end local v8    # "target":Ljava/io/File;
    .end local v9    # "identity":J
    .restart local v3    # "targetFd":Ljava/io/FileDescriptor;
    .restart local v4    # "target":Ljava/io/File;
    .restart local v18    # "identity":J
    :goto_eb
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 758
    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 762
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_f4
    .catch Landroid/system/ErrnoException; {:try_start_e3 .. :try_end_f4} :catch_14a

    .line 763
    :try_start_f4
    sget-boolean v6, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v6, :cond_fe

    .line 764
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_103

    .line 766
    :cond_fe
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 768
    :goto_103
    monitor-exit v5

    goto :goto_e3

    :catchall_105
    move-exception v0

    monitor-exit v5
    :try_end_107
    .catchall {:try_start_f4 .. :try_end_107} :catchall_105

    goto :goto_e3

    .line 771
    .end local v3    # "targetFd":Ljava/io/FileDescriptor;
    .end local v4    # "target":Ljava/io/File;
    .end local v18    # "identity":J
    .restart local v7    # "targetFd":Ljava/io/FileDescriptor;
    .restart local v8    # "target":Ljava/io/File;
    .restart local v9    # "identity":J
    :cond_108
    move-object v3, v7

    move-object v4, v8

    move-wide/from16 v18, v9

    .line 771
    .end local v7    # "targetFd":Ljava/io/FileDescriptor;
    .end local v8    # "target":Ljava/io/File;
    .end local v9    # "identity":J
    .restart local v3    # "targetFd":Ljava/io/FileDescriptor;
    .restart local v4    # "target":Ljava/io/File;
    .restart local v18    # "identity":J
    :try_start_10c
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_11a

    .line 772
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v0, v3}, Landroid/os/RevocableFileDescriptor;->init(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 773
    invoke-virtual {v14}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 775
    :cond_11a
    invoke-virtual {v15, v3}, Landroid/os/FileBridge;->setTargetFile(Ljava/io/FileDescriptor;)V

    .line 776
    invoke-virtual {v15}, Landroid/os/FileBridge;->start()V

    .line 777
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v15}, Landroid/os/FileBridge;->getClientSocket()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0

    .line 709
    .end local v3    # "targetFd":Ljava/io/FileDescriptor;
    .end local v4    # "target":Ljava/io/File;
    .end local v18    # "identity":J
    .restart local v9    # "identity":J
    :catchall_12a
    move-exception v0

    move-wide/from16 v18, v9

    .line 709
    .end local v9    # "identity":J
    .restart local v18    # "identity":J
    move-wide/from16 v3, v18

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 709
    .end local v18    # "identity":J
    .local v3, "identity":J
    throw v0

    .line 702
    .end local v3    # "identity":J
    :cond_133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14a
    .catch Landroid/system/ErrnoException; {:try_start_10c .. :try_end_14a} :catch_14a

    .line 780
    :catch_14a
    move-exception v0

    .line 781
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 697
    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v13    # "stageDir":Ljava/io/File;
    .end local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15    # "bridge":Landroid/os/FileBridge;
    :catchall_150
    move-exception v0

    :try_start_151
    monitor-exit v5
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_150

    throw v0
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1676
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1677
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1678
    monitor-exit v0

    .line 1679
    return-void

    .line 1678
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public generateInfo()Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 2

    .line 481
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfo(Z)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public generateInfo(Z)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 6
    .param p1, "includeIcon"    # Z

    .line 485
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    .line 486
    .local v0, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 487
    :try_start_8
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 488
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 489
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-eqz v2, :cond_1b

    .line 490
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 491
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    .line 492
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    .line 493
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_30

    const/4 v2, 0x1

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    .line 495
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    .line 496
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    .line 497
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput-wide v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    .line 498
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 499
    if-eqz p1, :cond_53

    .line 500
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 502
    :cond_53
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    .line 504
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    .line 505
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    .line 506
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    .line 507
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    .line 508
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 509
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    .line 510
    monitor-exit v1

    .line 511
    return-object v0

    .line 510
    :catchall_7f
    move-exception v2

    monitor-exit v1
    :try_end_81
    .catchall {:try_start_8 .. :try_end_81} :catchall_7f

    throw v2
.end method

.method public getInstallerUid()I
    .registers 3

    .line 1442
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1443
    :try_start_3
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    monitor-exit v0

    return v1

    .line 1444
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getNames()[Ljava/lang/String;
    .registers 4

    .line 604
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 606
    const-string v1, "getNames"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    .line 609
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_13} :catch_15
    .catchall {:try_start_b .. :try_end_13} :catchall_1b

    :try_start_13
    monitor-exit v0

    return-object v1

    .line 610
    :catch_15
    move-exception v1

    .line 611
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 613
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public isPrepared()Z
    .registers 3

    .line 515
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    monitor-exit v0

    return v1

    .line 517
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isSealed()Z
    .registers 3

    .line 521
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    monitor-exit v0

    return v1

    .line 523
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public open()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1560
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 1561
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 1565
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1566
    :try_start_11
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 1567
    .local v2, "wasPrepared":Z
    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    if-nez v3, :cond_2c

    .line 1568
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v3, :cond_23

    .line 1569
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V

    .line 1574
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    goto :goto_2c

    .line 1571
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "stageDir must be set"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1576
    :cond_2c
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_36

    move v0, v2

    .line 1578
    .end local v2    # "wasPrepared":Z
    .local v0, "wasPrepared":Z
    if-nez v0, :cond_35

    .line 1579
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionPrepared(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1581
    :cond_35
    return-void

    .line 1576
    .end local v0    # "wasPrepared":Z
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 787
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 788
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 789
    const-string/jumbo v1, "openRead"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_18

    .line 791
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_12
    .catchall {:try_start_c .. :try_end_10} :catchall_18

    :try_start_10
    monitor-exit v0

    return-object v1

    .line 792
    :catch_12
    move-exception v1

    .line 793
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 795
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J

    .line 651
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    :try_start_5
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    return-object v0

    .line 652
    :catch_a
    move-exception v0

    .line 653
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeSplit(Ljava/lang/String;)V
    .registers 5
    .param p1, "splitName"    # Ljava/lang/String;

    .line 618
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 622
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 623
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 624
    const-string/jumbo v1, "removeSplit"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_22

    .line 627
    :try_start_16
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1c
    .catchall {:try_start_16 .. :try_end_19} :catchall_22

    .line 630
    nop

    .line 631
    :try_start_1a
    monitor-exit v0

    .line 632
    return-void

    .line 628
    :catch_1c
    move-exception v1

    .line 629
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 631
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    throw v1

    .line 619
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify package name to remove a split"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClientProgress(F)V
    .registers 5
    .param p1, "progress"    # F

    .line 571
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 575
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 576
    .local v1, "forcePublish":Z
    :goto_10
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 577
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 578
    .end local v1    # "forcePublish":Z
    monitor-exit v0

    .line 579
    return-void

    .line 578
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method setPermissionsResult(Z)V
    .registers 5
    .param p1, "accepted"    # Z

    .line 1543
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v0, :cond_26

    .line 1547
    if-eqz p1, :cond_1a

    .line 1549
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1550
    const/4 v1, 0x1

    :try_start_a
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 1551
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1552
    monitor-exit v0

    goto :goto_25

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_17

    throw v1

    .line 1554
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1555
    const/16 v0, -0x73

    const-string v1, "User rejected permissions"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1557
    :goto_25
    return-void

    .line 1544
    :cond_26
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must be sealed to accept permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transfer(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 943
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 946
    .local v0, "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_9f

    .line 950
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "android.permission.INSTALL_PACKAGES"

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_79

    .line 958
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionParams;->areHiddenOptionsSet()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 962
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 963
    :try_start_25
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 964
    const-string/jumbo v2, "transfer"

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_6e

    .line 967
    :try_start_2e
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->sealAndValidateLocked()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_67
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2e .. :try_end_31} :catch_51
    .catchall {:try_start_2e .. :try_end_31} :catchall_6e

    .line 976
    nop

    .line 978
    :try_start_32
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 983
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    .line 984
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 985
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_6e

    .line 990
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 991
    return-void

    .line 979
    :cond_49
    :try_start_49
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Can only transfer sessions that update the original installer"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 970
    :catch_51
    move-exception v2

    .line 972
    .local v2, "e":Lcom/android/server/pm/PackageManagerException;
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 973
    iget v3, v2, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {v2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 975
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Package is not valid"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 968
    .end local v2    # "e":Lcom/android/server/pm/PackageManagerException;
    :catch_67
    move-exception v2

    .line 969
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 985
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_6e
    move-exception v2

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_49 .. :try_end_70} :catchall_6e

    throw v2

    .line 959
    :cond_71
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Can only transfer sessions that use public options"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 952
    :cond_79
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not have the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 947
    :cond_9f
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .param p6, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 661
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 664
    nop

    .line 665
    return-void

    .line 662
    :catch_5
    move-exception v0

    .line 663
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method write(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/File;)V
    .registers 11
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "sessionsDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1739
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1740
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 1741
    monitor-exit v0

    return-void

    .line 1744
    :cond_9
    const-string/jumbo v1, "session"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1746
    const-string/jumbo v1, "sessionId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1747
    const-string/jumbo v1, "userId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1748
    const-string v1, "installerPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1750
    const-string v1, "installerUid"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1751
    const-string v1, "createdMillis"

    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-static {p1, v1, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1752
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v1, :cond_45

    .line 1753
    const-string/jumbo v1, "sessionStageDir"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 1754
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1753
    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1756
    :cond_45
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v1, :cond_51

    .line 1757
    const-string/jumbo v1, "sessionStageCid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1759
    :cond_51
    const-string/jumbo v1, "prepared"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isPrepared()Z

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1760
    const-string/jumbo v1, "sealed"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1762
    const-string/jumbo v1, "mode"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1763
    const-string v1, "installFlags"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1764
    const-string v1, "installLocation"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1765
    const-string/jumbo v1, "sizeBytes"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-static {p1, v1, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1766
    const-string v1, "appPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1767
    const-string v1, "appLabel"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1768
    const-string/jumbo v1, "originatingUri"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 1769
    const-string/jumbo v1, "originatingUid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1770
    const-string/jumbo v1, "referrerUri"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 1771
    const-string v1, "abiOverride"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1772
    const-string/jumbo v1, "volumeUuid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1773
    const-string v1, "installRason"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1775
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/server/pm/PackageInstallerSession;->writeGrantedRuntimePermissionsLocked(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;)V

    .line 1778
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v1, p2}, Lcom/android/server/pm/PackageInstallerSession;->buildAppIconFile(ILjava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 1779
    .local v1, "appIconFile":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_f5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_f5

    .line 1780
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto/16 :goto_169

    .line 1781
    :cond_f5
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_169

    .line 1782
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_169

    .line 1783
    const-string v3, "PackageInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing changed icon "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catchall {:try_start_3 .. :try_end_11d} :catchall_171

    .line 1784
    move-object v3, v2

    .line 1786
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_11e
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 1787
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_12f} :catch_135
    .catchall {:try_start_11e .. :try_end_12f} :catchall_133

    .line 1791
    :try_start_12f
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_132
    .catchall {:try_start_12f .. :try_end_132} :catchall_171

    .line 1792
    :goto_132
    goto :goto_15c

    .line 1791
    :catchall_133
    move-exception v2

    goto :goto_165

    .line 1788
    :catch_135
    move-exception v4

    .line 1789
    .local v4, "e":Ljava/io/IOException;
    :try_start_136
    const-string v5, "PackageInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write icon "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_158
    .catchall {:try_start_136 .. :try_end_158} :catchall_133

    .line 1791
    .end local v4    # "e":Ljava/io/IOException;
    :try_start_158
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_132

    .line 1794
    :goto_15c
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iput-wide v5, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 1794
    .end local v1    # "appIconFile":Ljava/io/File;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    goto :goto_169

    .line 1791
    .restart local v1    # "appIconFile":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :goto_165
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .line 1796
    .end local v1    # "appIconFile":Ljava/io/File;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :cond_169
    :goto_169
    monitor-exit v0
    :try_end_16a
    .catchall {:try_start_158 .. :try_end_16a} :catchall_171

    .line 1798
    const-string/jumbo v0, "session"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1799
    return-void

    .line 1796
    :catchall_171
    move-exception v1

    :try_start_172
    monitor-exit v0
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_171

    throw v1
.end method
