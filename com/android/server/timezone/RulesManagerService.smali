.class public final Lcom/android/server/timezone/RulesManagerService;
.super Landroid/app/timezone/IRulesManager$Stub;
.source "RulesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;,
        Lcom/android/server/timezone/RulesManagerService$InstallRunnable;,
        Lcom/android/server/timezone/RulesManagerService$Lifecycle;
    }
.end annotation


# static fields
.field static final DISTRO_FORMAT_VERSION_SUPPORTED:Landroid/app/timezone/DistroFormatVersion;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field static final REQUIRED_QUERY_PERMISSION:Ljava/lang/String; = "android.permission.QUERY_TIME_ZONE_RULES"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field static final REQUIRED_UPDATER_PERMISSION:Ljava/lang/String; = "android.permission.UPDATE_TIME_ZONE_RULES"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field private static final SYSTEM_TZ_DATA_FILE:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "timezone.RulesManagerService"

.field private static final TZ_DATA_DIR:Ljava/io/File;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

.field private final mIntentHelper:Lcom/android/server/timezone/RulesManagerIntentHelper;

.field private final mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPackageTracker:Lcom/android/server/timezone/PackageTracker;

.field private final mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 67
    new-instance v0, Landroid/app/timezone/DistroFormatVersion;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/app/timezone/DistroFormatVersion;-><init>(II)V

    sput-object v0, Lcom/android/server/timezone/RulesManagerService;->DISTRO_FORMAT_VERSION_SUPPORTED:Landroid/app/timezone/DistroFormatVersion;

    .line 98
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/usr/share/zoneinfo/tzdata"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/timezone/RulesManagerService;->SYSTEM_TZ_DATA_FILE:Ljava/io/File;

    .line 99
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/zoneinfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/timezone/RulesManagerService;->TZ_DATA_DIR:Ljava/io/File;

    return-void
.end method

.method constructor <init>(Lcom/android/server/timezone/PermissionHelper;Ljava/util/concurrent/Executor;Lcom/android/server/timezone/RulesManagerIntentHelper;Lcom/android/server/timezone/PackageTracker;Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;)V
    .registers 8
    .param p1, "permissionHelper"    # Lcom/android/server/timezone/PermissionHelper;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "intentHelper"    # Lcom/android/server/timezone/RulesManagerIntentHelper;
    .param p4, "packageTracker"    # Lcom/android/server/timezone/PackageTracker;
    .param p5, "timeZoneDistroInstaller"    # Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 122
    invoke-direct {p0}, Landroid/app/timezone/IRulesManager$Stub;-><init>()V

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 123
    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    .line 124
    iput-object p2, p0, Lcom/android/server/timezone/RulesManagerService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 125
    iput-object p3, p0, Lcom/android/server/timezone/RulesManagerService;->mIntentHelper:Lcom/android/server/timezone/RulesManagerIntentHelper;

    .line 126
    iput-object p4, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    .line 127
    iput-object p5, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    .line 128
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lcom/android/server/timezone/RulesManagerService;
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;

    .line 61
    invoke-static {p0}, Lcom/android/server/timezone/RulesManagerService;->create(Landroid/content/Context;)Lcom/android/server/timezone/RulesManagerService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Object;

    .line 61
    invoke-static {p0}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/timezone/RulesManagerService;

    .line 61
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/timezone/RulesManagerService;
    .param p1, "x1"    # Landroid/app/timezone/ICallback;
    .param p2, "x2"    # I

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/timezone/RulesManagerService;->sendFinishedStatus(Landroid/app/timezone/ICallback;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/timezone/RulesManagerService;

    .line 61
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/timezone/RulesManagerService;

    .line 61
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/RulesManagerIntentHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/timezone/RulesManagerService;

    .line 61
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mIntentHelper:Lcom/android/server/timezone/RulesManagerIntentHelper;

    return-object v0
.end method

.method private static create(Landroid/content/Context;)Lcom/android/server/timezone/RulesManagerService;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    new-instance v1, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;

    invoke-direct {v1, p0}, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;-><init>(Landroid/content/Context;)V

    .line 110
    .local v1, "helper":Lcom/android/server/timezone/RulesManagerServiceHelperImpl;
    new-instance v6, Lcom/android/server/timezone/RulesManagerService;

    .line 114
    invoke-static {p0}, Lcom/android/server/timezone/PackageTracker;->create(Landroid/content/Context;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v4

    new-instance v5, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    const-string/jumbo v0, "timezone.RulesManagerService"

    sget-object v2, Lcom/android/server/timezone/RulesManagerService;->SYSTEM_TZ_DATA_FILE:Ljava/io/File;

    sget-object v3, Lcom/android/server/timezone/RulesManagerService;->TZ_DATA_DIR:Ljava/io/File;

    invoke-direct {v5, v0, v2, v3}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    move-object v0, v6

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezone/RulesManagerService;-><init>(Lcom/android/server/timezone/PermissionHelper;Ljava/util/concurrent/Executor;Lcom/android/server/timezone/RulesManagerIntentHelper;Lcom/android/server/timezone/PackageTracker;Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;)V

    .line 110
    return-object v6
.end method

.method private static createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;
    .registers 5
    .param p0, "checkTokenBytes"    # [B

    .line 562
    :try_start_0
    invoke-static {p0}, Lcom/android/server/timezone/CheckToken;->fromByteArray([B)Lcom/android/server/timezone/CheckToken;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_7

    .line 566
    .local v0, "checkToken":Lcom/android/server/timezone/CheckToken;
    nop

    .line 565
    nop

    .line 567
    return-object v0

    .line 563
    .end local v0    # "checkToken":Lcom/android/server/timezone/CheckToken;
    :catch_7
    move-exception v0

    .line 564
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read token bytes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static distroStatusToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "distroStatus"    # I

    .line 571
    packed-switch p0, :pswitch_data_c

    .line 578
    const-string v0, "Unknown"

    return-object v0

    .line 575
    :pswitch_6
    const-string v0, "Installed"

    return-object v0

    .line 573
    :pswitch_9
    const-string v0, "None"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private getRulesStateInternal()Landroid/app/timezone/RulesState;
    .registers 15

    .line 144
    monitor-enter p0

    .line 147
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    invoke-virtual {v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->getSystemRulesVersion()Ljava/lang/String;

    move-result-object v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_8} :catch_71
    .catchall {:try_start_2 .. :try_end_8} :catchall_6f

    .line 151
    .local v3, "systemRulesVersion":Ljava/lang/String;
    nop

    .line 150
    nop

    .line 156
    const/4 v1, 0x0

    .line 157
    .local v1, "distroStatus":I
    nop

    .line 159
    .local v0, "installedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    :try_start_c
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    invoke-virtual {v2}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->getInstalledDistroVersion()Lcom/android/timezone/distro/DistroVersion;

    move-result-object v2

    .line 160
    .local v2, "installedDistroVersion":Lcom/android/timezone/distro/DistroVersion;
    if-nez v2, :cond_17

    .line 161
    const/4 v1, 0x1

    .line 162
    const/4 v0, 0x0

    goto :goto_22

    .line 164
    :cond_17
    const/4 v1, 0x2

    .line 165
    new-instance v4, Landroid/app/timezone/DistroRulesVersion;

    iget-object v5, v2, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget v6, v2, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-direct {v4, v5, v6}, Landroid/app/timezone/DistroRulesVersion;-><init>(Ljava/lang/String;I)V
    :try_end_21
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_c .. :try_end_21} :catch_23
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_21} :catch_23
    .catchall {:try_start_c .. :try_end_21} :catchall_6f

    move-object v0, v4

    .line 171
    :goto_22
    goto :goto_2c

    .line 169
    .end local v2    # "installedDistroVersion":Lcom/android/timezone/distro/DistroVersion;
    :catch_23
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/Exception;
    :try_start_24
    const-string/jumbo v4, "timezone.RulesManagerService"

    const-string v5, "Failed to read installed distro."

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2c
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_6f

    move v10, v2

    .line 176
    .local v10, "operationInProgress":Z
    const/4 v2, 0x0

    .line 177
    .local v2, "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    const/4 v4, 0x0

    .line 178
    .local v4, "stagedOperationStatus":I
    if-nez v10, :cond_5e

    .line 181
    :try_start_37
    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    invoke-virtual {v5}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->getStagedDistroOperation()Lcom/android/timezone/distro/StagedDistroOperation;

    move-result-object v5

    .line 182
    .local v5, "stagedDistroOperation":Lcom/android/timezone/distro/StagedDistroOperation;
    if-nez v5, :cond_41

    .line 183
    const/4 v4, 0x1

    goto :goto_54

    .line 184
    :cond_41
    iget-boolean v6, v5, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    if-eqz v6, :cond_47

    .line 185
    const/4 v4, 0x2

    goto :goto_54

    .line 188
    :cond_47
    const/4 v4, 0x3

    .line 189
    iget-object v6, v5, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    .line 190
    .local v6, "stagedDistroVersion":Lcom/android/timezone/distro/DistroVersion;
    new-instance v7, Landroid/app/timezone/DistroRulesVersion;

    iget-object v8, v6, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget v9, v6, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-direct {v7, v8, v9}, Landroid/app/timezone/DistroRulesVersion;-><init>(Ljava/lang/String;I)V
    :try_end_53
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_37 .. :try_end_53} :catch_55
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_53} :catch_55
    .catchall {:try_start_37 .. :try_end_53} :catchall_6f

    move-object v2, v7

    .line 196
    .end local v6    # "stagedDistroVersion":Lcom/android/timezone/distro/DistroVersion;
    :goto_54
    goto :goto_5e

    .line 194
    .end local v5    # "stagedDistroOperation":Lcom/android/timezone/distro/StagedDistroOperation;
    :catch_55
    move-exception v5

    .line 195
    .local v5, "e":Ljava/lang/Exception;
    :try_start_56
    const-string/jumbo v6, "timezone.RulesManagerService"

    const-string v7, "Failed to read staged distro."

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .end local v2    # "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    .end local v4    # "stagedOperationStatus":I
    .end local v5    # "e":Ljava/lang/Exception;
    .local v11, "stagedOperationStatus":I
    .local v12, "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    :cond_5e
    :goto_5e
    move-object v12, v2

    move v11, v4

    new-instance v13, Landroid/app/timezone/RulesState;

    sget-object v4, Lcom/android/server/timezone/RulesManagerService;->DISTRO_FORMAT_VERSION_SUPPORTED:Landroid/app/timezone/DistroFormatVersion;

    move-object v2, v13

    move v5, v10

    move v6, v11

    move-object v7, v12

    move v8, v1

    move-object v9, v0

    invoke-direct/range {v2 .. v9}, Landroid/app/timezone/RulesState;-><init>(Ljava/lang/String;Landroid/app/timezone/DistroFormatVersion;ZILandroid/app/timezone/DistroRulesVersion;ILandroid/app/timezone/DistroRulesVersion;)V

    monitor-exit p0

    return-object v13

    .line 201
    .end local v0    # "installedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    .end local v1    # "distroStatus":I
    .end local v3    # "systemRulesVersion":Ljava/lang/String;
    .end local v10    # "operationInProgress":Z
    .end local v11    # "stagedOperationStatus":I
    .end local v12    # "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    :catchall_6f
    move-exception v0

    goto :goto_7c

    .line 148
    :catch_71
    move-exception v1

    .line 149
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "timezone.RulesManagerService"

    const-string v3, "Failed to read system rules"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    monitor-exit p0

    return-object v0

    .line 201
    .end local v1    # "e":Ljava/io/IOException;
    :goto_7c
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_56 .. :try_end_7d} :catchall_6f

    throw v0
.end method

.method private sendFinishedStatus(Landroid/app/timezone/ICallback;I)V
    .registers 6
    .param p1, "callback"    # Landroid/app/timezone/ICallback;
    .param p2, "resultCode"    # I

    .line 416
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/timezone/ICallback;->onFinished(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 419
    goto :goto_d

    .line 417
    :catch_4
    move-exception v0

    .line 418
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "timezone.RulesManagerService"

    const-string v2, "Unable to notify observer of result"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_d
    return-void
.end method

.method private static stagedOperationToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "stagedOperationType"    # I

    .line 583
    packed-switch p0, :pswitch_data_10

    .line 592
    const-string v0, "Unknown"

    return-object v0

    .line 589
    :pswitch_6
    const-string v0, "Install"

    return-object v0

    .line 587
    :pswitch_9
    const-string v0, "Uninstall"

    return-object v0

    .line 585
    :pswitch_c
    const-string v0, "None"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 597
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string/jumbo v1, "timezone.RulesManagerService"

    invoke-interface {v0, v1, p2}, Lcom/android/server/timezone/PermissionHelper;->checkDumpPermission(Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 437
    return-void

    .line 440
    :cond_c
    invoke-direct {p0}, Lcom/android/server/timezone/RulesManagerService;->getRulesStateInternal()Landroid/app/timezone/RulesState;

    move-result-object v0

    .line 441
    .local v0, "rulesState":Landroid/app/timezone/RulesState;
    if-eqz p3, :cond_15a

    array-length v1, p3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_15a

    .line 444
    const-string v1, "-format_state"

    const/4 v2, 0x0

    aget-object v3, p3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15a

    const/4 v1, 0x1

    aget-object v3, p3, v1

    if-eqz v3, :cond_15a

    .line 445
    aget-object v1, p3, v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v3, v1

    :goto_2d
    if-ge v2, v3, :cond_159

    aget-char v4, v1, v2

    .line 446
    .local v4, "c":C
    sparse-switch v4, :sswitch_data_1ca

    .line 525
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v4    # "c":C
    goto/16 :goto_155

    .line 502
    .restart local v4    # "c":C
    :sswitch_4a
    const-string v5, "Unknown"

    .line 503
    .local v5, "value":Ljava/lang/String;
    if-eqz v0, :cond_5c

    .line 504
    nop

    .line 505
    invoke-virtual {v0}, Landroid/app/timezone/RulesState;->getStagedDistroRulesVersion()Landroid/app/timezone/DistroRulesVersion;

    move-result-object v6

    .line 506
    .local v6, "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    if-nez v6, :cond_58

    .line 507
    const-string v5, "<None>"

    goto :goto_5c

    .line 509
    :cond_58
    invoke-virtual {v6}, Landroid/app/timezone/DistroRulesVersion;->toDumpString()Ljava/lang/String;

    move-result-object v5

    .line 512
    .end local v6    # "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    :cond_5c
    :goto_5c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Staged rules version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    goto/16 :goto_155

    .line 458
    .end local v5    # "value":Ljava/lang/String;
    :sswitch_72
    const-string v5, "Unknown"

    .line 459
    .restart local v5    # "value":Ljava/lang/String;
    if-eqz v0, :cond_7a

    .line 460
    invoke-virtual {v0}, Landroid/app/timezone/RulesState;->getSystemRulesVersion()Ljava/lang/String;

    move-result-object v5

    .line 462
    :cond_7a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "System rules version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    goto/16 :goto_155

    .line 449
    .end local v5    # "value":Ljava/lang/String;
    :sswitch_90
    const-string v5, "Unknown"

    .line 450
    .restart local v5    # "value":Ljava/lang/String;
    if-eqz v0, :cond_9c

    .line 451
    invoke-virtual {v0}, Landroid/app/timezone/RulesState;->isOperationInProgress()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    .line 453
    :cond_9c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Operation in progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    goto/16 :goto_155

    .line 491
    .end local v5    # "value":Ljava/lang/String;
    :sswitch_b2
    const-string v5, "Unknown"

    .line 492
    .restart local v5    # "value":Ljava/lang/String;
    if-eqz v0, :cond_be

    .line 493
    invoke-virtual {v0}, Landroid/app/timezone/RulesState;->getStagedOperationType()I

    move-result v6

    .line 494
    .local v6, "stagedOperationType":I
    invoke-static {v6}, Lcom/android/server/timezone/RulesManagerService;->stagedOperationToString(I)Ljava/lang/String;

    move-result-object v5

    .line 496
    .end local v6    # "stagedOperationType":I
    :cond_be
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Staged operation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    goto/16 :goto_155

    .line 476
    .end local v5    # "value":Ljava/lang/String;
    :sswitch_d4
    const-string v5, "Unknown"

    .line 477
    .restart local v5    # "value":Ljava/lang/String;
    if-eqz v0, :cond_e6

    .line 478
    nop

    .line 479
    invoke-virtual {v0}, Landroid/app/timezone/RulesState;->getInstalledDistroRulesVersion()Landroid/app/timezone/DistroRulesVersion;

    move-result-object v6

    .line 480
    .local v6, "installedRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    if-nez v6, :cond_e2

    .line 481
    const-string v5, "<None>"

    goto :goto_e6

    .line 483
    :cond_e2
    invoke-virtual {v6}, Landroid/app/timezone/DistroRulesVersion;->toDumpString()Ljava/lang/String;

    move-result-object v5

    .line 486
    .end local v6    # "installedRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    :cond_e6
    :goto_e6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Installed rules version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    goto :goto_155

    .line 467
    .end local v5    # "value":Ljava/lang/String;
    :sswitch_fb
    const-string v5, "Unknown"

    .line 468
    .restart local v5    # "value":Ljava/lang/String;
    if-eqz v0, :cond_107

    .line 469
    invoke-virtual {v0}, Landroid/app/timezone/RulesState;->getDistroStatus()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/timezone/RulesManagerService;->distroStatusToString(I)Ljava/lang/String;

    move-result-object v5

    .line 471
    :cond_107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current install state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    goto :goto_155

    .line 518
    .end local v5    # "value":Ljava/lang/String;
    :sswitch_11c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active rules version (ICU, ZoneInfoDB, TimeZoneFinder): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-static {}, Llibcore/icu/ICU;->getTZDataVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v6

    invoke-virtual {v6}, Llibcore/util/ZoneInfoDB$TzData;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-static {}, Llibcore/util/TimeZoneFinder;->getInstance()Llibcore/util/TimeZoneFinder;

    move-result-object v6

    invoke-virtual {v6}, Llibcore/util/TimeZoneFinder;->getIanaVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 518
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    nop

    .line 445
    .end local v4    # "c":C
    :goto_155
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2d

    .line 529
    :cond_159
    return-void

    .line 533
    :cond_15a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RulesManagerService state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/timezone/RulesManagerService;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Active rules version (ICU, ZoneInfoDB, TimeZoneFinder): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-static {}, Llibcore/icu/ICU;->getTZDataVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/util/ZoneInfoDB$TzData;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-static {}, Llibcore/util/TimeZoneFinder;->getInstance()Llibcore/util/TimeZoneFinder;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/util/TimeZoneFinder;->getIanaVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Distro state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/timezone/RulesState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    invoke-virtual {v1, p2}, Lcom/android/server/timezone/PackageTracker;->dump(Ljava/io/PrintWriter;)V

    .line 540
    return-void

    nop

    nop

    :sswitch_data_1ca
    .sparse-switch
        0x61 -> :sswitch_11c
        0x63 -> :sswitch_fb
        0x69 -> :sswitch_d4
        0x6f -> :sswitch_b2
        0x70 -> :sswitch_90
        0x73 -> :sswitch_72
        0x74 -> :sswitch_4a
    .end sparse-switch
.end method

.method public getRulesState()Landroid/app/timezone/RulesState;
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string v1, "android.permission.QUERY_TIME_ZONE_RULES"

    invoke-interface {v0, v1}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/android/server/timezone/RulesManagerService;->getRulesStateInternal()Landroid/app/timezone/RulesState;

    move-result-object v0

    return-object v0
.end method

.method notifyIdle()V
    .registers 4

    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, "packageChanged":Z
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/timezone/PackageTracker;->triggerUpdateIfNeeded(Z)V

    .line 550
    return-void
.end method

.method public requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/ICallback;)I
    .registers 11
    .param p1, "distroParcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "checkTokenBytes"    # [B
    .param p3, "callback"    # Landroid/app/timezone/ICallback;

    .line 208
    const/4 v0, 0x1

    move v1, v0

    .line 210
    .local v1, "closeParcelFileDescriptorOnExit":Z
    :try_start_2
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string v3, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v2, v3}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    .line 212
    const/4 v2, 0x0

    .line 213
    .local v2, "checkToken":Lcom/android/server/timezone/CheckToken;
    if-eqz p2, :cond_11

    .line 214
    invoke-static {p2}, Lcom/android/server/timezone/RulesManagerService;->createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;

    move-result-object v3

    move-object v2, v3

    .line 216
    :cond_11
    invoke-static {v2}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/EventLogTags;->writeTimezoneRequestInstall(Ljava/lang/String;)V

    .line 218
    monitor-enter p0
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_75

    .line 219
    if-eqz p1, :cond_6a

    .line 222
    if-eqz p3, :cond_61

    .line 225
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 226
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_72

    .line 243
    if-eqz p1, :cond_37

    if-eqz v1, :cond_37

    .line 245
    :try_start_2a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 248
    goto :goto_37

    .line 246
    :catch_2e
    move-exception v3

    .line 247
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v4, "timezone.RulesManagerService"

    const-string v5, "Failed to close distroParcelFileDescriptor"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .end local v3    # "e":Ljava/io/IOException;
    :cond_37
    :goto_37
    return v0

    .line 228
    :cond_38
    :try_start_38
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;

    invoke-direct {v3, p0, p1, v2, p3}, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;-><init>(Lcom/android/server/timezone/RulesManagerService;Landroid/os/ParcelFileDescriptor;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_72

    .line 236
    const/4 v0, 0x0

    .line 238
    .end local v1    # "closeParcelFileDescriptorOnExit":Z
    .local v0, "closeParcelFileDescriptorOnExit":Z
    const/4 v1, 0x0

    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_5c

    .line 243
    if-eqz p1, :cond_5b

    if-eqz v0, :cond_5b

    .line 245
    :try_start_4e
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    .line 248
    goto :goto_5b

    .line 246
    :catch_52
    move-exception v3

    .line 247
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v4, "timezone.RulesManagerService"

    const-string v5, "Failed to close distroParcelFileDescriptor"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5b
    :goto_5b
    return v1

    .line 239
    :catchall_5c
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_73

    .line 223
    .end local v0    # "closeParcelFileDescriptorOnExit":Z
    .restart local v1    # "closeParcelFileDescriptorOnExit":Z
    :cond_61
    :try_start_61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "observer == null"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_6a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "distroParcelFileDescriptor == null"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :catchall_72
    move-exception v0

    :goto_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_61 .. :try_end_74} :catchall_72

    :try_start_74
    throw v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    .line 243
    .end local v2    # "checkToken":Lcom/android/server/timezone/CheckToken;
    :catchall_75
    move-exception v0

    if-eqz p1, :cond_87

    if-eqz v1, :cond_87

    .line 245
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    .line 248
    goto :goto_87

    .line 246
    :catch_7e
    move-exception v2

    .line 247
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v3, "timezone.RulesManagerService"

    const-string v4, "Failed to close distroParcelFileDescriptor"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    .end local v2    # "e":Ljava/io/IOException;
    :cond_87
    :goto_87
    throw v0
.end method

.method public requestNothing([BZ)V
    .registers 5
    .param p1, "checkTokenBytes"    # [B
    .param p2, "success"    # Z

    .line 424
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string v1, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v0, v1}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "checkToken":Lcom/android/server/timezone/CheckToken;
    if-eqz p1, :cond_e

    .line 427
    invoke-static {p1}, Lcom/android/server/timezone/RulesManagerService;->createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;

    move-result-object v0

    .line 429
    :cond_e
    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeTimezoneRequestNothing(Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 431
    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeTimezoneNothingComplete(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public requestUninstall([BLandroid/app/timezone/ICallback;)I
    .registers 6
    .param p1, "checkTokenBytes"    # [B
    .param p2, "callback"    # Landroid/app/timezone/ICallback;

    .line 331
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string v1, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v0, v1}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "checkToken":Lcom/android/server/timezone/CheckToken;
    if-eqz p1, :cond_e

    .line 335
    invoke-static {p1}, Lcom/android/server/timezone/RulesManagerService;->createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;

    move-result-object v0

    .line 337
    :cond_e
    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeTimezoneRequestUninstall(Ljava/lang/String;)V

    .line 338
    monitor-enter p0

    .line 339
    if-eqz p2, :cond_35

    .line 343
    :try_start_18
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    .line 344
    monitor-exit p0

    return v2

    .line 346
    :cond_23
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 349
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;-><init>(Lcom/android/server/timezone/RulesManagerService;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 351
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 340
    :cond_35
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "callback == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    :catchall_3d
    move-exception v1

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public start()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    invoke-virtual {v0}, Lcom/android/server/timezone/PackageTracker;->start()Z

    .line 133
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RulesManagerService{mOperationInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
