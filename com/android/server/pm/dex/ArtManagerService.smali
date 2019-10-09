.class public Lcom/android/server/pm/dex/ArtManagerService;
.super Landroid/content/pm/dex/IArtManager$Stub;
.source "ArtManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;
    }
.end annotation


# static fields
.field private static final BOOT_IMAGE_ANDROID_PACKAGE:Ljava/lang/String; = "android"

.field private static final BOOT_IMAGE_PROFILE_NAME:Ljava/lang/String; = "android.prof"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ArtManagerService"

.field private static final TRON_COMPILATION_FILTER_ASSUMED_VERIFIED:I = 0x2

.field private static final TRON_COMPILATION_FILTER_ERROR:I = 0x0

.field private static final TRON_COMPILATION_FILTER_EVERYTHING:I = 0xb

.field private static final TRON_COMPILATION_FILTER_EVERYTHING_PROFILE:I = 0xa

.field private static final TRON_COMPILATION_FILTER_EXTRACT:I = 0x3

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK:I = 0xc

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK_FALLBACK:I = 0xd

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_VDEX_FALLBACK:I = 0xe

.field private static final TRON_COMPILATION_FILTER_QUICKEN:I = 0x5

.field private static final TRON_COMPILATION_FILTER_SPACE:I = 0x7

.field private static final TRON_COMPILATION_FILTER_SPACE_PROFILE:I = 0x6

.field private static final TRON_COMPILATION_FILTER_SPEED:I = 0x9

.field private static final TRON_COMPILATION_FILTER_SPEED_PROFILE:I = 0x8

.field private static final TRON_COMPILATION_FILTER_UNKNOWN:I = 0x1

.field private static final TRON_COMPILATION_FILTER_VERIFY:I = 0x4

.field private static final TRON_COMPILATION_REASON_AB_OTA:I = 0x6

.field private static final TRON_COMPILATION_REASON_BG_DEXOPT:I = 0x5

.field private static final TRON_COMPILATION_REASON_BOOT:I = 0x3

.field private static final TRON_COMPILATION_REASON_ERROR:I = 0x0

.field private static final TRON_COMPILATION_REASON_FIRST_BOOT:I = 0x2

.field private static final TRON_COMPILATION_REASON_INACTIVE:I = 0x7

.field private static final TRON_COMPILATION_REASON_INSTALL:I = 0x4

.field private static final TRON_COMPILATION_REASON_SHARED:I = 0x8

.field private static final TRON_COMPILATION_REASON_UNKNOWN:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLock"
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 80
    const-string v0, "ArtManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    .line 97
    invoke-static {}, Lcom/android/server/pm/dex/ArtManagerService;->verifyTronLoggingConstants()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/IPackageManager;
    .param p3, "installer"    # Lcom/android/server/pm/Installer;
    .param p4, "installLock"    # Ljava/lang/Object;

    .line 101
    invoke-direct {p0}, Landroid/content/pm/dex/IArtManager$Stub;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 104
    iput-object p3, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 105
    iput-object p4, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstallLock:Ljava/lang/Object;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    .line 108
    const-class v0, Landroid/content/pm/dex/ArtManagerInternal;

    new-instance v1, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;-><init>(Lcom/android/server/pm/dex/ArtManagerService;Lcom/android/server/pm/dex/ArtManagerService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 78
    invoke-static {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationFilterTronValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 78
    invoke-static {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationReasonTronValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private checkAndroidPermissions(ILjava/lang/String;)Z
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_RUNTIME_PROFILES"

    const-string v2, "ArtManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 118
    const/16 v1, 0x2b

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_21

    .line 126
    const/4 v0, 0x0

    return v0

    .line 122
    :cond_21
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    const-string v3, "ArtManagerService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return v1

    .line 120
    :cond_2b
    return v1
.end method

.method private checkShellPermissions(ILjava/lang/String;I)Z
    .registers 9
    .param p1, "profileType"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 142
    const/4 v0, 0x0

    const/16 v1, 0x7d0

    if-eq p3, v1, :cond_6

    .line 143
    return v0

    .line 145
    :cond_6
    sget-boolean v1, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 146
    return v2

    .line 148
    :cond_c
    if-ne p1, v2, :cond_f

    .line 150
    return v0

    .line 152
    :cond_f
    const/4 v1, 0x0

    .line 154
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_10
    iget-object v3, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p2, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_18

    move-object v1, v3

    .line 157
    goto :goto_19

    .line 155
    :catch_18
    move-exception v3

    .line 158
    :goto_19
    if-nez v1, :cond_1c

    .line 159
    return v0

    .line 163
    :cond_1c
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_26

    move v0, v2

    nop

    :cond_26
    return v0
.end method

.method private createProfileSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "classpath"    # Ljava/lang/String;
    .param p4, "appId"    # I
    .param p5, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    .line 261
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    const/4 v1, 0x2

    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, p4, p1, p2, p3}, Lcom/android/server/pm/Installer;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 264
    invoke-direct {p0, p5, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V
    :try_end_f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4 .. :try_end_f} :catch_84
    .catchall {:try_start_4 .. :try_end_f} :catchall_82

    .line 265
    :try_start_f
    monitor-exit v0

    return-void

    .line 270
    :cond_11
    nop

    .line 271
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_82

    .line 274
    invoke-static {p1, p2}, Landroid/content/pm/dex/ArtManager;->getProfileSnapshotFileForName(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 276
    .local v0, "snapshotProfile":Ljava/io/File;
    const/4 v2, 0x0

    .line 278
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    const/high16 v3, 0x10000000

    :try_start_1a
    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v2, v3

    .line 279
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_30

    .line 285
    :cond_2c
    invoke-direct {p0, p1, v2, p5}, Lcom/android/server/pm/dex/ArtManagerService;->postSuccess(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    goto :goto_5e

    .line 280
    :cond_30
    :goto_30
    const-string v3, "ArtManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ParcelFileDescriptor.open returned an invalid descriptor for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". isNull="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_50

    const/4 v5, 0x1

    goto :goto_51

    :cond_50
    const/4 v5, 0x0

    :goto_51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct {p0, p5, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_5e} :catch_5f

    .line 291
    :goto_5e
    goto :goto_81

    .line 287
    :catch_5f
    move-exception v3

    .line 288
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, "ArtManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not open snapshot profile for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    invoke-direct {p0, p5, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 292
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_81
    return-void

    .line 271
    .end local v0    # "snapshotProfile":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_82
    move-exception v1

    goto :goto_8a

    .line 267
    :catch_84
    move-exception v2

    .line 268
    .local v2, "e":Lcom/android/server/pm/Installer$InstallerException;
    :try_start_85
    invoke-direct {p0, p5, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 269
    monitor-exit v0

    return-void

    .line 271
    .end local v2    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_85 .. :try_end_8b} :catchall_82

    throw v1
.end method

.method private destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 295
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 296
    const-string v0, "ArtManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying profile snapshot for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_22
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_25
    iget-object v1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/Installer;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_25 .. :try_end_2a} :catch_2d
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2b

    .line 305
    goto :goto_4c

    .line 306
    :catchall_2b
    move-exception v1

    goto :goto_4e

    .line 302
    :catch_2d
    move-exception v1

    .line 303
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    :try_start_2e
    const-string v2, "ArtManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to destroy profile snapshot for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .end local v1    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_4c
    monitor-exit v0

    .line 307
    return-void

    .line 306
    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_2e .. :try_end_4f} :catchall_2b

    throw v1
.end method

.method private static getCompilationFilterTronValue(Ljava/lang/String;)I
    .registers 18
    .param p0, "compilationFilter"    # Ljava/lang/String;

    .line 545
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0xa

    const/4 v4, 0x3

    const/16 v5, 0x8

    const/16 v6, 0xe

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/16 v10, 0x9

    const/4 v11, 0x6

    const/16 v12, 0xb

    const/4 v13, 0x5

    const/16 v14, 0xc

    const/16 v15, 0xd

    const/16 v16, 0x1

    sparse-switch v1, :sswitch_data_de

    goto/16 :goto_c9

    :sswitch_22
    const-string/jumbo v1, "run-from-apk-fallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    move v1, v15

    goto/16 :goto_ca

    :sswitch_2e
    const-string/jumbo v1, "run-from-apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    move v1, v14

    goto/16 :goto_ca

    :sswitch_3a
    const-string/jumbo v1, "quicken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    move v1, v13

    goto/16 :goto_ca

    :sswitch_46
    const-string v1, "everything"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    move v1, v12

    goto/16 :goto_ca

    :sswitch_51
    const-string/jumbo v1, "space-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    move v1, v11

    goto/16 :goto_ca

    :sswitch_5d
    const-string/jumbo v1, "speed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    move v1, v10

    goto/16 :goto_ca

    :sswitch_69
    const-string/jumbo v1, "space"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    move v1, v9

    goto :goto_ca

    :sswitch_74
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    move v1, v8

    goto :goto_ca

    :sswitch_7e
    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    move/from16 v1, v16

    goto :goto_ca

    :sswitch_8a
    const-string/jumbo v1, "verify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    move v1, v7

    goto :goto_ca

    :sswitch_95
    const-string/jumbo v1, "run-from-vdex-fallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    move v1, v6

    goto :goto_ca

    :sswitch_a0
    const-string/jumbo v1, "speed-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    move v1, v5

    goto :goto_ca

    :sswitch_ab
    const-string v1, "extract"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    move v1, v4

    goto :goto_ca

    :sswitch_b5
    const-string v1, "everything-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    move v1, v3

    goto :goto_ca

    :sswitch_bf
    const-string v1, "assume-verified"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    move v1, v2

    goto :goto_ca

    :cond_c9
    :goto_c9
    const/4 v1, -0x1

    :goto_ca
    packed-switch v1, :pswitch_data_11c

    .line 563
    return v16

    .line 562
    :pswitch_ce
    return v6

    .line 560
    :pswitch_cf
    return v15

    .line 558
    :pswitch_d0
    return v14

    .line 557
    :pswitch_d1
    return v12

    .line 556
    :pswitch_d2
    return v3

    .line 555
    :pswitch_d3
    return v10

    .line 554
    :pswitch_d4
    return v5

    .line 553
    :pswitch_d5
    return v9

    .line 552
    :pswitch_d6
    return v11

    .line 551
    :pswitch_d7
    return v13

    .line 550
    :pswitch_d8
    return v7

    .line 549
    :pswitch_d9
    return v4

    .line 548
    :pswitch_da
    return v2

    .line 547
    :pswitch_db
    return v16

    .line 546
    :pswitch_dc
    return v8

    nop

    :sswitch_data_de
    .sparse-switch
        -0x74ad4b37 -> :sswitch_bf
        -0x6b7d2b71 -> :sswitch_b5
        -0x4dcd237f -> :sswitch_ab
        -0x4358c9dd -> :sswitch_a0
        -0x35c83f13 -> :sswitch_95
        -0x30df7787 -> :sswitch_8a
        -0x10fa53b6 -> :sswitch_7e
        0x5c4d208 -> :sswitch_74
        0x688f106 -> :sswitch_69
        0x6890047 -> :sswitch_5d
        0x14c5f7e2 -> :sswitch_51
        0x17efcab3 -> :sswitch_46
        0x273d6b56 -> :sswitch_3a
        0x36f5967b -> :sswitch_2e
        0x71a3adf4 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
    .end packed-switch
.end method

.method private static getCompilationReasonTronValue(Ljava/lang/String;)I
    .registers 11
    .param p0, "compilationReason"    # Ljava/lang/String;

    .line 527
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x1

    sparse-switch v0, :sswitch_data_7e

    goto/16 :goto_6f

    :sswitch_13
    const-string v0, "install"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    move v0, v8

    goto :goto_70

    :sswitch_1d
    const-string v0, "error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    move v0, v9

    goto :goto_70

    :sswitch_27
    const-string v0, "inactive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    move v0, v7

    goto :goto_70

    :sswitch_31
    const-string v0, "boot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    move v0, v6

    goto :goto_70

    :sswitch_3b
    const-string v0, "first-boot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    move v0, v5

    goto :goto_70

    :sswitch_45
    const-string/jumbo v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    move v0, v4

    goto :goto_70

    :sswitch_50
    const-string/jumbo v0, "shared"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    move v0, v3

    goto :goto_70

    :sswitch_5b
    const-string v0, "ab-ota"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    move v0, v2

    goto :goto_70

    :sswitch_65
    const-string v0, "bg-dexopt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    move v0, v1

    goto :goto_70

    :cond_6f
    :goto_6f
    const/4 v0, -0x1

    :goto_70
    packed-switch v0, :pswitch_data_a4

    .line 537
    return v9

    .line 536
    :pswitch_74
    return v3

    .line 535
    :pswitch_75
    return v7

    .line 534
    :pswitch_76
    return v2

    .line 533
    :pswitch_77
    return v1

    .line 532
    :pswitch_78
    return v8

    .line 531
    :pswitch_79
    return v6

    .line 530
    :pswitch_7a
    return v5

    .line 529
    :pswitch_7b
    return v4

    .line 528
    :pswitch_7c
    return v9

    nop

    :sswitch_data_7e
    .sparse-switch
        -0x754fea3c -> :sswitch_65
        -0x54fec890 -> :sswitch_5b
        -0x35db539b -> :sswitch_50
        -0x10fa53b6 -> :sswitch_45
        -0xc5e4811 -> :sswitch_3b
        0x2e3af2 -> :sswitch_31
        0x1785c6b -> :sswitch_27
        0x5c4d208 -> :sswitch_1d
        0x74ae259b -> :sswitch_13
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
    .end packed-switch
.end method

.method private getPackageProfileNames(Landroid/content/pm/PackageParser$Package;)Landroid/util/ArrayMap;
    .registers 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 471
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 472
    .local v0, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_17

    .line 473
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_17
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 476
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3f

    .line 477
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    aget v2, v2, v1

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3c

    .line 478
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 482
    .end local v1    # "i":I
    :cond_3f
    return-object v0
.end method

.method static synthetic lambda$postError$0(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V
    .registers 7
    .param p0, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    .param p1, "errCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 353
    :try_start_0
    invoke-interface {p0, p1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 356
    goto :goto_1b

    .line 354
    :catch_4
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ArtManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to callback after profile snapshot for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method static synthetic lambda$postSuccess$1(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .registers 7
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 370
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 371
    invoke-interface {p1, p0}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onSuccess(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_28

    .line 373
    :cond_e
    const-string v0, "ArtManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The snapshot FD became invalid before posting the result for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_2e
    .catchall {:try_start_0 .. :try_end_28} :catchall_2c

    .line 381
    :goto_28
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 382
    goto :goto_46

    .line 381
    :catchall_2c
    move-exception v0

    goto :goto_47

    .line 377
    :catch_2e
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2f
    const-string v1, "ArtManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call onSuccess after profile snapshot for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_2f .. :try_end_45} :catchall_2c

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_28

    .line 383
    :goto_46
    return-void

    .line 381
    :goto_47
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V
    .registers 7
    .param p1, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "errCode"    # I

    .line 347
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 348
    const-string v0, "ArtManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to snapshot profile for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_22
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$_rD0Y6OPSJHMdjTIOtucoGQ1xag;

    invoke-direct {v1, p1, p3, p2}, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$_rD0Y6OPSJHMdjTIOtucoGQ1xag;-><init>(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    return-void
.end method

.method private postSuccess(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    .line 362
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 363
    const-string v0, "ArtManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully snapshot profile for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1a
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$MEVzU-orlv4msZVF-bA5NLti04g;

    invoke-direct {v1, p2, p3, p1}, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$MEVzU-orlv4msZVF-bA5NLti04g;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    return-void
.end method

.method private snapshotAppProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    .line 209
    const/4 v0, 0x0

    .line 218
    .local v0, "info":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, v1, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_a

    move-object v0, v2

    .line 221
    goto :goto_b

    .line 219
    :catch_a
    move-exception v2

    .line 222
    :goto_b
    if-nez v0, :cond_11

    .line 223
    invoke-direct {p0, p3, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 224
    return-void

    .line 227
    :cond_11
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 228
    .local v1, "pathFound":Z
    const/4 v2, 0x0

    .line 229
    .local v2, "splitName":Ljava/lang/String;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "splitCodePaths":[Ljava/lang/String;
    const/4 v4, 0x1

    if-nez v1, :cond_3e

    if-eqz v3, :cond_3e

    .line 231
    array-length v5, v3

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_29
    if-ltz v5, :cond_3e

    .line 232
    aget-object v6, v3, v5

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 233
    const/4 v1, 0x1

    .line 234
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    aget-object v2, v6, v5

    .line 235
    goto :goto_3e

    .line 231
    :cond_3b
    add-int/lit8 v5, v5, -0x1

    goto :goto_29

    .line 239
    .end local v5    # "i":I
    :cond_3e
    :goto_3e
    if-nez v1, :cond_44

    .line 240
    invoke-direct {p0, p3, p1, v4}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 241
    return-void

    .line 245
    :cond_44
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 246
    .local v4, "appId":I
    if-gez v4, :cond_69

    .line 247
    const/4 v5, 0x2

    invoke-direct {p0, p3, p1, v5}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 248
    const-string v5, "ArtManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppId is -1 for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void

    .line 252
    :cond_69
    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move v9, v4

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/dex/ArtManagerService;->createProfileSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    .line 255
    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/pm/dex/ArtManagerService;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method private snapshotBootImageProfile(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 12
    .param p1, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    .line 331
    const-string v0, ":"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v2, "BOOTCLASSPATH"

    invoke-static {v2}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "SYSTEMSERVERCLASSPATH"

    .line 332
    invoke-static {v2}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 331
    invoke-static {v0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "classpath":Ljava/lang/String;
    const-string v5, "android"

    const-string v6, "android.prof"

    const/4 v8, -0x1

    move-object v4, p0

    move-object v7, v0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/dex/ArtManagerService;->createProfileSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    .line 338
    const-string v1, "android"

    const-string v2, "android.prof"

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/dex/ArtManagerService;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method private static verifyTronLoggingConstants()V
    .registers 6

    .line 568
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 569
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 570
    .local v1, "reason":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationReasonTronValue(Ljava/lang/String;)I

    move-result v2

    .line 571
    .local v2, "value":I
    if-eqz v2, :cond_16

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    .line 568
    .end local v1    # "reason":Ljava/lang/String;
    .end local v2    # "value":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 573
    .restart local v1    # "reason":Ljava/lang/String;
    .restart local v2    # "value":I
    :cond_16
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compilation reason not configured for TRON logging: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 577
    .end local v0    # "i":I
    .end local v1    # "reason":Ljava/lang/String;
    .end local v2    # "value":I
    :cond_2d
    return-void
.end method


# virtual methods
.method public clearAppProfiles(Landroid/content/pm/PackageParser$Package;)V
    .registers 7
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 437
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageProfileNames(Landroid/content/pm/PackageParser$Package;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 438
    .local v0, "packageProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_1c

    .line 439
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 440
    .local v2, "profileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/Installer;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_19} :catch_1d

    .line 438
    .end local v2    # "profileName":Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 444
    .end local v0    # "packageProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_1c
    goto :goto_27

    .line 442
    :catch_1d
    move-exception v0

    .line 443
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v1, "ArtManagerService"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_27
    return-void
.end method

.method public dumpProfiles(Landroid/content/pm/PackageParser$Package;)V
    .registers 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 451
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 453
    .local v0, "sharedGid":I
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageProfileNames(Landroid/content/pm/PackageParser$Package;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 454
    .local v1, "packageProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_12
    if-ltz v2, :cond_31

    .line 455
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 456
    .local v3, "codePath":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 457
    .local v4, "profileName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_23
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8 .. :try_end_23} :catch_32

    .line 458
    :try_start_23
    iget-object v6, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0, v7, v4, v3}, Lcom/android/server/pm/Installer;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 459
    monitor-exit v5

    .line 454
    .end local v3    # "codePath":Ljava/lang/String;
    .end local v4    # "profileName":Ljava/lang/String;
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    .line 459
    .restart local v3    # "codePath":Ljava/lang/String;
    .restart local v4    # "profileName":Ljava/lang/String;
    :catchall_2e
    move-exception v6

    monitor-exit v5
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_2e

    :try_start_30
    throw v6
    :try_end_31
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_30 .. :try_end_31} :catch_32

    .line 463
    .end local v1    # "packageProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "codePath":Ljava/lang/String;
    .end local v4    # "profileName":Ljava/lang/String;
    :cond_31
    goto :goto_3a

    .line 461
    :catch_32
    move-exception v1

    .line 462
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "ArtManagerService"

    const-string v3, "Failed to dump profiles"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    .end local v1    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_3a
    return-void
.end method

.method public isRuntimeProfilingEnabled(ILjava/lang/String;)Z
    .registers 7
    .param p1, "profileType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 311
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 312
    .local v0, "callingUid":I
    const/4 v1, 0x0

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_10

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 313
    return v1

    .line 316
    :cond_10
    packed-switch p1, :pswitch_data_4c

    .line 324
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid profile type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :pswitch_2a
    sget-boolean v2, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v2, :cond_32

    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    if-eqz v2, :cond_44

    :cond_32
    const-string v2, "dalvik.vm.usejitprofiles"

    .line 321
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string v2, "dalvik.vm.profilebootimage"

    .line 322
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_44

    const/4 v1, 0x1

    nop

    .line 320
    :cond_44
    return v1

    .line 318
    :pswitch_45
    const-string v2, "dalvik.vm.usejitprofiles"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_45
        :pswitch_2a
    .end packed-switch
.end method

.method public prepareAppProfiles(Landroid/content/pm/PackageParser$Package;I)V
    .registers 16
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "user"    # I

    .line 393
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 394
    .local v0, "appId":I
    if-gez p2, :cond_21

    .line 395
    const-string v1, "ArtManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid user id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-void

    .line 398
    :cond_21
    if-gez v0, :cond_3a

    .line 399
    const-string v1, "ArtManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid app id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void

    .line 403
    :cond_3a
    :try_start_3a
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageProfileNames(Landroid/content/pm/PackageParser$Package;)Landroid/util/ArrayMap;

    move-result-object v1

    move-object v8, v1

    .line 404
    .local v8, "codePathsProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_45
    move v9, v1

    .end local v1    # "i":I
    .local v9, "i":I
    if-ltz v9, :cond_a1

    .line 405
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v10, v1

    .line 406
    .local v10, "codePath":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 407
    .local v5, "profileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    move-object v11, v1

    .line 408
    .local v11, "dexMetadata":Ljava/io/File;
    if-nez v11, :cond_65

    const/4 v1, 0x0

    :goto_63
    move-object v7, v1

    goto :goto_6a

    :cond_65
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_63

    .line 409
    .local v7, "dexMetadataPath":Ljava/lang/String;
    :goto_6a
    iget-object v12, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    monitor-enter v12
    :try_end_6d
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3a .. :try_end_6d} :catch_a2

    .line 410
    :try_start_6d
    iget-object v1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move v3, p2

    move v4, v0

    move-object v6, v10

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/Installer;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 412
    .local v1, "result":Z
    if-nez v1, :cond_9a

    .line 413
    const-string v2, "ArtManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to prepare profile for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v1    # "result":Z
    :cond_9a
    monitor-exit v12

    .line 404
    .end local v5    # "profileName":Ljava/lang/String;
    .end local v7    # "dexMetadataPath":Ljava/lang/String;
    .end local v10    # "codePath":Ljava/lang/String;
    .end local v11    # "dexMetadata":Ljava/io/File;
    add-int/lit8 v1, v9, -0x1

    .end local v9    # "i":I
    .local v1, "i":I
    goto :goto_45

    .line 416
    .end local v1    # "i":I
    .restart local v5    # "profileName":Ljava/lang/String;
    .restart local v7    # "dexMetadataPath":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v10    # "codePath":Ljava/lang/String;
    .restart local v11    # "dexMetadata":Ljava/io/File;
    :catchall_9e
    move-exception v1

    monitor-exit v12
    :try_end_a0
    .catchall {:try_start_6d .. :try_end_a0} :catchall_9e

    :try_start_a0
    throw v1
    :try_end_a1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_a0 .. :try_end_a1} :catch_a2

    .line 420
    .end local v5    # "profileName":Ljava/lang/String;
    .end local v7    # "dexMetadataPath":Ljava/lang/String;
    .end local v8    # "codePathsProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "i":I
    .end local v10    # "codePath":Ljava/lang/String;
    .end local v11    # "dexMetadata":Ljava/io/File;
    :cond_a1
    goto :goto_bb

    .line 418
    :catch_a2
    move-exception v1

    .line 419
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "ArtManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to prepare profile for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    .end local v1    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_bb
    return-void
.end method

.method public prepareAppProfiles(Landroid/content/pm/PackageParser$Package;[I)V
    .registers 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "user"    # [I

    .line 427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_c

    .line 428
    aget v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->prepareAppProfiles(Landroid/content/pm/PackageParser$Package;I)V

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 430
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .registers 11
    .param p1, "profileType"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 172
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 173
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/dex/ArtManagerService;->checkShellPermissions(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 174
    invoke-direct {p0, v0, p5}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 176
    const/4 v1, 0x2

    :try_start_11
    invoke-interface {p4, v1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 178
    goto :goto_16

    .line 177
    :catch_15
    move-exception v1

    .line 179
    :goto_16
    return-void

    .line 183
    :cond_17
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 186
    .local v1, "bootImageProfile":Z
    :goto_1f
    if-nez v1, :cond_27

    .line 187
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 188
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 192
    :cond_27
    invoke-virtual {p0, p1, p5}, Lcom/android/server/pm/dex/ArtManagerService;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 196
    sget-boolean v2, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v2, :cond_4f

    .line 197
    const-string v2, "ArtManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested snapshot for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_4f
    if-eqz v1, :cond_55

    .line 201
    invoke-direct {p0, p4}, Lcom/android/server/pm/dex/ArtManagerService;->snapshotBootImageProfile(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    goto :goto_58

    .line 203
    :cond_55
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/pm/dex/ArtManagerService;->snapshotAppProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    .line 205
    :goto_58
    return-void

    .line 193
    :cond_59
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Runtime profiling is not enabled for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
