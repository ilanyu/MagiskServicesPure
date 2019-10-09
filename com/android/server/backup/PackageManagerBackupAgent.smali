.class public Lcom/android/server/backup/PackageManagerBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "PackageManagerBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;,
        Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;,
        Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;,
        Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    }
.end annotation


# static fields
.field private static final ANCESTRAL_RECORD_KEY:Ljava/lang/String; = "@ancestral_record@"

.field private static final ANCESTRAL_RECORD_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DEFAULT_HOME_KEY:Ljava/lang/String; = "@home@"

.field private static final GLOBAL_METADATA_KEY:Ljava/lang/String; = "@meta@"

.field private static final STATE_FILE_HEADER:Ljava/lang/String; = "=state="

.field private static final STATE_FILE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PMBA"

.field private static final UNDEFINED_ANCESTRAL_RECORD_VERSION:I = -0x1


# instance fields
.field private mAllPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mExisting:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasMetadata:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRestoredHome:Landroid/content/ComponentName;

.field private mRestoredHomeInstaller:Ljava/lang/String;

.field private mRestoredHomeSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mRestoredHomeVersion:J

.field private mRestoredSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStateVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStoredHomeComponent:Landroid/content/ComponentName;

.field private mStoredHomeSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mStoredHomeVersion:J

.field private mStoredIncrementalVersion:Ljava/lang/String;

.field private mStoredSdkVersion:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .registers 3
    .param p1, "packageMgr"    # Landroid/content/pm/PackageManager;

    .line 136
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->init(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/server/backup/PackageManagerBackupAgent;->evaluateStorablePackages()V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .registers 4
    .param p1, "packageMgr"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/PackageManagerBackupAgent;->init(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 134
    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/PackageManagerBackupAgent;
    .param p1, "x1"    # Ljava/util/HashMap;

    .line 64
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/backup/PackageManagerBackupAgent;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/PackageManagerBackupAgent;
    .param p1, "x1"    # I

    .line 64
    iput p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/PackageManagerBackupAgent;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/server/backup/PackageManagerBackupAgent;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/PackageManagerBackupAgent;
    .param p1, "x1"    # Z

    .line 64
    iput-boolean p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/backup/PackageManagerBackupAgent;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/PackageManagerBackupAgent;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .line 64
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHome:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/server/backup/PackageManagerBackupAgent;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/PackageManagerBackupAgent;
    .param p1, "x1"    # J

    .line 64
    iput-wide p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeVersion:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/PackageManagerBackupAgent;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeInstaller:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/PackageManagerBackupAgent;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 64
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeSigHashes:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Ljava/io/DataInputStream;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Ljava/io/DataInputStream;

    .line 64
    invoke-static {p0}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getAncestralRecordVersionValue(Landroid/app/backup/BackupDataInput;)I
    .registers 8
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    const/4 v0, -0x1

    .line 437
    .local v0, "ancestralRecordVersionValue":I
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 438
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v2

    .line 443
    .local v2, "dataSize":I
    const-string v3, "@ancestral_record@"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 445
    new-array v3, v2, [B

    .line 446
    .local v3, "inputBytes":[B
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 447
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 448
    .local v4, "inputBuffer":Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 450
    .local v5, "inputBufferStream":Ljava/io/DataInputStream;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 453
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "dataSize":I
    .end local v3    # "inputBytes":[B
    .end local v4    # "inputBuffer":Ljava/io/ByteArrayInputStream;
    .end local v5    # "inputBufferStream":Ljava/io/DataInputStream;
    :cond_2b
    return v0
.end method

.method private getPreferredHomeComponent()Landroid/content/ComponentName;
    .registers 3

    .line 617
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getRestoreDataConsumer(I)Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;
    .registers 6
    .param p1, "ancestralRecordVersion"    # I

    .line 457
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_24

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1e

    .line 463
    const-string v0, "PMBA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized ANCESTRAL_RECORD_VERSION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-object v1

    .line 461
    :cond_1e
    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;

    invoke-direct {v0, p0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;Lcom/android/server/backup/PackageManagerBackupAgent$1;)V

    return-object v0

    .line 459
    :cond_24
    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;

    invoke-direct {v0, p0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;Lcom/android/server/backup/PackageManagerBackupAgent$1;)V

    return-object v0
.end method

.method public static getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 160
    const/high16 v0, 0x8000000

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 161
    .local v0, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 162
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "a":I
    :goto_c
    if-ltz v2, :cond_22

    .line 163
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 164
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4, p0}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 165
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 162
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_1f
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 168
    .end local v2    # "a":I
    :cond_22
    return-object v0
.end method

.method private init(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .registers 4
    .param p1, "packageMgr"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 143
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 144
    iput-object p2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 149
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 150
    return-void
.end method

.method private parseStateFile(Landroid/os/ParcelFileDescriptor;)V
    .registers 13
    .param p1, "stateFile"    # Landroid/os/ParcelFileDescriptor;

    .line 529
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 530
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 531
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 533
    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    .line 534
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    .line 535
    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 541
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 542
    .local v1, "instream":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 543
    .local v2, "inbuffer":Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 546
    .local v3, "in":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    .line 547
    .local v4, "ignoreExisting":Z
    :try_start_2c
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 550
    .local v5, "pkg":Ljava/lang/String;
    const-string v6, "=state="

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 551
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 552
    .local v6, "stateVersion":I
    const/4 v7, 0x2

    if-le v6, v7, :cond_5b

    .line 553
    const-string v0, "PMBA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported state file version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", redoing from start"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-void

    .line 557
    :cond_5b
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 558
    .end local v6    # "stateVersion":I
    goto :goto_69

    .line 564
    :cond_61
    const-string v6, "PMBA"

    const-string v7, "Older version of saved state - rewriting"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v4, 0x1

    .line 569
    :goto_69
    const-string v6, "@home@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 571
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    .line 572
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    .line 573
    invoke-static {v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 575
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 581
    :cond_8c
    const-string v6, "@meta@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ce

    .line 582
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 583
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 584
    if-nez v4, :cond_a9

    .line 585
    iget-object v6, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    const-string v7, "@meta@"

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_a9
    :goto_a9
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 595
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 597
    .local v6, "versionCodeInt":I
    const/high16 v7, -0x80000000

    if-ne v6, v7, :cond_bb

    .line 598
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    .local v7, "versionCode":J
    goto :goto_bc

    .line 600
    .end local v7    # "versionCode":J
    :cond_bb
    int-to-long v7, v6

    .line 603
    .restart local v7    # "versionCode":J
    :goto_bc
    if-nez v4, :cond_c3

    .line 604
    iget-object v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_c3
    iget-object v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    new-instance v10, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    invoke-direct {v10, p0, v7, v8, v0}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;JLjava/util/ArrayList;)V

    invoke-virtual {v9, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .end local v6    # "versionCodeInt":I
    .end local v7    # "versionCode":J
    goto :goto_a9

    .line 588
    :cond_ce
    const-string v0, "PMBA"

    const-string v6, "No global metadata in state file!"

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catch Ljava/io/EOFException; {:try_start_2c .. :try_end_d5} :catch_ee
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_d5} :catch_d6

    .line 589
    return-void

    .line 610
    .end local v4    # "ignoreExisting":Z
    .end local v5    # "pkg":Ljava/lang/String;
    :catch_d6
    move-exception v0

    .line 612
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "PMBA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read Package Manager state file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_f0

    .line 608
    :catch_ee
    move-exception v0

    .line 613
    nop

    .line 614
    :goto_f0
    return-void
.end method

.method private static readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;
    .registers 9
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            ")",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 484
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_5} :catch_41
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_3f

    .line 489
    .local v1, "num":I
    nop

    .line 488
    nop

    .line 494
    const/16 v2, 0x14

    if-gt v1, v2, :cond_30

    .line 503
    const/4 v2, 0x0

    .line 504
    .local v2, "nonHashFound":Z
    :try_start_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 505
    .local v3, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    if-ge v4, v1, :cond_28

    .line 506
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 507
    .local v5, "len":I
    new-array v6, v5, [B

    .line 508
    .local v6, "readHash":[B
    invoke-virtual {p0, v6}, Ljava/io/DataInputStream;->read([B)I

    .line 509
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    const/16 v7, 0x20

    if-eq v5, v7, :cond_25

    .line 511
    const/4 v2, 0x1

    .line 505
    .end local v5    # "len":I
    .end local v6    # "readHash":[B
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 515
    .end local v4    # "i":I
    :cond_28
    if-eqz v2, :cond_2f

    .line 517
    invoke-static {v3}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v3, v4

    .line 520
    :cond_2f
    return-object v3

    .line 495
    .end local v2    # "nonHashFound":Z
    .end local v3    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_30
    const-string v2, "PMBA"

    const-string v3, "Suspiciously large sig count in restore data; aborting"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Bad restore state"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 521
    .end local v1    # "num":I
    :catch_3f
    move-exception v1

    goto :goto_4a

    .line 485
    :catch_41
    move-exception v1

    .line 487
    .local v1, "e":Ljava/io/EOFException;
    const-string v2, "PMBA"

    const-string v3, "Read empty signature block"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_49} :catch_3f

    .line 488
    return-object v0

    .line 521
    .end local v1    # "e":Ljava/io/EOFException;
    :goto_4a
    nop

    .line 522
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "PMBA"

    const-string v3, "Unable to read signatures"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-object v0
.end method

.method private static writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    .registers 4
    .param p0, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    array-length v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 407
    array-length v0, p2

    invoke-virtual {p0, p2, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 408
    return-void
.end method

.method private static writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V
    .registers 5
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutputStream;",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    .local p1, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 474
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 475
    .local v1, "buffer":[B
    array-length v2, v1

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 476
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 477
    .end local v1    # "buffer":[B
    goto :goto_b

    .line 478
    :cond_1f
    return-void
.end method

.method private writeStateFile(Ljava/util/List;Landroid/content/ComponentName;JLjava/util/ArrayList;Landroid/os/ParcelFileDescriptor;)V
    .registers 14
    .param p2, "preferredHome"    # Landroid/content/ComponentName;
    .param p3, "homeVersion"    # J
    .param p6, "stateFile"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "J",
            "Ljava/util/ArrayList<",
            "[B>;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .line 623
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local p5, "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 624
    .local v0, "outstream":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 625
    .local v1, "outbuf":Ljava/io/BufferedOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 630
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_13
    const-string v3, "=state="

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 631
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 634
    if-eqz p2, :cond_30

    .line 635
    const-string v3, "@home@"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v2, p3, p4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 638
    invoke-static {v2, p5}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 642
    :cond_30
    const-string v3, "@meta@"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 643
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 644
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 647
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 648
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 649
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    if-eqz v5, :cond_65

    .line 650
    const/high16 v5, -0x80000000

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 651
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_6a

    .line 653
    :cond_65
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 655
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_6a
    goto :goto_43

    .line 657
    :cond_6b
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_6e} :catch_6f

    .line 660
    goto :goto_77

    .line 658
    :catch_6f
    move-exception v3

    .line 659
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "PMBA"

    const-string v5, "Unable to write package manager state file!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    .end local v3    # "e":Ljava/io/IOException;
    :goto_77
    return-void
.end method


# virtual methods
.method public evaluateStorablePackages()V
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    .line 156
    return-void
.end method

.method public getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    if-nez v0, :cond_d

    .line 177
    const-string v0, "PMBA"

    const-string v1, "getRestoredMetadata() before metadata read!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x0

    return-object v0

    .line 181
    :cond_d
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    return-object v0
.end method

.method public getRestoredPackages()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    if-nez v0, :cond_d

    .line 186
    const-string v0, "PMBA"

    const-string v1, "getRestoredPackages() before metadata read!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x0

    return-object v0

    .line 195
    :cond_d
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hasMetadata()Z
    .registers 2

    .line 172
    iget-boolean v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    return v0
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 27
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 203
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v10, v0

    .line 204
    .local v10, "outputBuffer":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v11, v0

    .line 205
    .local v11, "outputBufferStream":Ljava/io/DataOutputStream;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->parseStateFile(Landroid/os/ParcelFileDescriptor;)V

    .line 210
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 212
    :cond_21
    const-string v0, "PMBA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Previous metadata "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mismatch vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - rewriting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 225
    :cond_4d
    const/4 v1, 0x1

    :try_start_4e
    invoke-virtual {v11, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 226
    const-string v0, "@ancestral_record@"

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v9, v0, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5a} :catch_209

    .line 231
    nop

    .line 233
    const-wide/16 v2, 0x0

    .line 234
    .local v2, "homeVersion":J
    const/4 v4, 0x0

    .line 235
    .local v4, "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v5, 0x0

    .line 236
    .local v5, "homeInfo":Landroid/content/pm/PackageInfo;
    const/4 v6, 0x0

    .line 237
    .local v6, "homeInstaller":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/PackageManagerBackupAgent;->getPreferredHomeComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 238
    .local v7, "home":Landroid/content/ComponentName;
    const/high16 v12, 0x8000000

    if-eqz v7, :cond_a9

    .line 240
    :try_start_68
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v5, v0

    .line 242
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 243
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v13

    move-wide v2, v13

    .line 244
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 245
    .local v0, "signingInfo":Landroid/content/pm/SigningInfo;
    if-nez v0, :cond_8f

    .line 246
    const-string v13, "PMBA"

    const-string v14, "Home app has no signing information"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 250
    :cond_8f
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v13

    .line 251
    .local v13, "homeInfoSignatures":[Landroid/content/pm/Signature;
    invoke-static {v13}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v14
    :try_end_97
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_68 .. :try_end_97} :catch_99

    move-object v4, v14

    .line 257
    .end local v0    # "signingInfo":Landroid/content/pm/SigningInfo;
    .end local v13    # "homeInfoSignatures":[Landroid/content/pm/Signature;
    :goto_98
    goto :goto_a9

    .line 253
    :catch_99
    move-exception v0

    .line 254
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "PMBA"

    const-string v14, "Can\'t access preferred home info"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v0, 0x0

    .line 266
    .end local v7    # "home":Landroid/content/ComponentName;
    .local v0, "home":Landroid/content/ComponentName;
    move-object v15, v0

    move-wide v13, v2

    move-object v7, v5

    move-object/from16 v16, v6

    move-object v6, v4

    goto :goto_af

    .end local v0    # "home":Landroid/content/ComponentName;
    .end local v2    # "homeVersion":J
    .end local v4    # "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v5    # "homeInfo":Landroid/content/pm/PackageInfo;
    .local v6, "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .local v7, "homeInfo":Landroid/content/pm/PackageInfo;
    .local v13, "homeVersion":J
    .local v15, "home":Landroid/content/ComponentName;
    .local v16, "homeInstaller":Ljava/lang/String;
    :cond_a9
    :goto_a9
    move-wide v13, v2

    move-object/from16 v16, v6

    move-object v15, v7

    move-object v6, v4

    move-object v7, v5

    :goto_af
    :try_start_af
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    move-object v2, v0

    .line 267
    .local v2, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-wide v3, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_ba} :catch_1fd

    cmp-long v0, v13, v3

    if-nez v0, :cond_d9

    :try_start_be
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    .line 268
    invoke-static {v15, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    if-eqz v15, :cond_d1

    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 270
    invoke-static {v0, v7, v2}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v0

    if-nez v0, :cond_d1

    goto :goto_d9

    :cond_d1
    const/4 v1, 0x0

    goto :goto_da

    .line 394
    .end local v2    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :catch_d3
    move-exception v0

    move-object v12, v6

    move-object/from16 v17, v7

    goto/16 :goto_201

    .line 270
    .restart local v2    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :cond_d9
    :goto_d9
    nop

    .line 271
    .local v1, "needHomeBackup":Z
    :goto_da
    if-eqz v1, :cond_108

    .line 275
    if-eqz v15, :cond_102

    .line 276
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 277
    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v11, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 279
    if-eqz v16, :cond_f0

    move-object/from16 v0, v16

    goto :goto_f2

    :cond_f0
    const-string v0, ""

    :goto_f2
    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 280
    invoke-static {v11, v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 281
    const-string v0, "@home@"

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v9, v0, v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    goto :goto_108

    .line 283
    :cond_102
    const-string v0, "@home@"

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_108} :catch_d3

    .line 296
    :cond_108
    :goto_108
    :try_start_108
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 297
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    const-string v3, "@meta@"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_113} :catch_1fd

    if-nez v0, :cond_129

    .line 299
    :try_start_115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 300
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 301
    const-string v0, "@meta@"

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v9, v0, v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_128} :catch_d3

    goto :goto_130

    .line 305
    :cond_129
    :try_start_129
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    const-string v3, "@meta@"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 310
    :goto_130
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_136
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_13a} :catch_1fd

    if-eqz v0, :cond_1ee

    :try_start_13c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object v4, v0

    .line 311
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v5, v0

    .line 312
    .local v5, "packName":Ljava/lang/String;
    const-string v0, "@meta@"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_14c} :catch_d3

    if-eqz v0, :cond_14f

    .line 314
    goto :goto_136

    .line 316
    :cond_14f
    const/4 v0, 0x0

    move-object/from16 v17, v0

    .line 318
    .local v17, "info":Landroid/content/pm/PackageInfo;
    :try_start_152
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_158
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_152 .. :try_end_158} :catch_1d7
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_158} :catch_d3

    .line 325
    .end local v17    # "info":Landroid/content/pm/PackageInfo;
    .local v0, "info":Landroid/content/pm/PackageInfo;
    nop

    .line 327
    :try_start_159
    iget-object v12, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v12, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_182

    .line 333
    iget-object v12, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v12, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 334
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v18

    iget-object v12, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move/from16 v21, v1

    move-object/from16 v20, v2

    iget-wide v1, v12, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    .end local v1    # "needHomeBackup":Z
    .end local v2    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .local v20, "pmi":Landroid/content/pm/PackageManagerInternal;
    .local v21, "needHomeBackup":Z
    cmp-long v1, v18, v1

    if-nez v1, :cond_186

    .line 335
    nop

    .line 310
    move-object/from16 v2, v20

    move/from16 v1, v21

    goto :goto_1ea

    .line 339
    .end local v20    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v21    # "needHomeBackup":Z
    .restart local v1    # "needHomeBackup":Z
    .restart local v2    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :cond_182
    move/from16 v21, v1

    move-object/from16 v20, v2

    .end local v1    # "needHomeBackup":Z
    .end local v2    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .restart local v20    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .restart local v21    # "needHomeBackup":Z
    :cond_186
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 340
    .local v1, "signingInfo":Landroid/content/pm/SigningInfo;
    if-nez v1, :cond_1a8

    .line 341
    const-string v2, "PMBA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v3

    const-string v3, "Not backing up package "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " since it appears to have no signatures."

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    goto :goto_1e4

    .line 355
    :cond_1a8
    move-object/from16 v22, v3

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 356
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    if-eqz v2, :cond_1be

    .line 357
    const/high16 v2, -0x80000000

    invoke-virtual {v11, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 358
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_1c3

    .line 360
    :cond_1be
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v11, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 363
    :goto_1c3
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v2

    .line 364
    .local v2, "infoSignatures":[Landroid/content/pm/Signature;
    nop

    .line 365
    invoke-static {v2}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v3

    .line 364
    invoke-static {v11, v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 374
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v9, v5, v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    .line 376
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "signingInfo":Landroid/content/pm/SigningInfo;
    .end local v2    # "infoSignatures":[Landroid/content/pm/Signature;
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "packName":Ljava/lang/String;
    goto :goto_1e4

    .line 320
    .end local v20    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v21    # "needHomeBackup":Z
    .local v1, "needHomeBackup":Z
    .local v2, "pmi":Landroid/content/pm/PackageManagerInternal;
    .restart local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "packName":Ljava/lang/String;
    .restart local v17    # "info":Landroid/content/pm/PackageInfo;
    :catch_1d7
    move-exception v0

    move/from16 v21, v1

    move-object/from16 v20, v2

    move-object/from16 v22, v3

    .line 323
    .end local v1    # "needHomeBackup":Z
    .end local v2    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v20    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .restart local v21    # "needHomeBackup":Z
    iget-object v1, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1e3
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_1e3} :catch_d3

    .line 324
    nop

    .line 310
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "packName":Ljava/lang/String;
    .end local v17    # "info":Landroid/content/pm/PackageInfo;
    .end local v20    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v21    # "needHomeBackup":Z
    .restart local v1    # "needHomeBackup":Z
    .restart local v2    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :goto_1e4
    move-object/from16 v2, v20

    move/from16 v1, v21

    move-object/from16 v3, v22

    :goto_1ea
    const/high16 v12, 0x8000000

    goto/16 :goto_136

    .line 398
    .end local v1    # "needHomeBackup":Z
    .end local v2    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :cond_1ee
    nop

    .line 401
    iget-object v2, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    move-object v1, v8

    move-object v3, v15

    move-wide v4, v13

    move-object v12, v6

    .end local v6    # "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .local v12, "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    move-object/from16 v17, v7

    move-object/from16 v7, p3

    .end local v7    # "homeInfo":Landroid/content/pm/PackageInfo;
    .local v17, "homeInfo":Landroid/content/pm/PackageInfo;
    invoke-direct/range {v1 .. v7}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeStateFile(Ljava/util/List;Landroid/content/ComponentName;JLjava/util/ArrayList;Landroid/os/ParcelFileDescriptor;)V

    .line 402
    return-void

    .line 394
    .end local v12    # "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v17    # "homeInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v7    # "homeInfo":Landroid/content/pm/PackageInfo;
    :catch_1fd
    move-exception v0

    move-object v12, v6

    move-object/from16 v17, v7

    .line 396
    .end local v6    # "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v7    # "homeInfo":Landroid/content/pm/PackageInfo;
    .local v0, "e":Ljava/io/IOException;
    .restart local v12    # "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v17    # "homeInfo":Landroid/content/pm/PackageInfo;
    :goto_201
    const-string v1, "PMBA"

    const-string v2, "Unable to write package backup data file!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void

    .line 227
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v13    # "homeVersion":J
    .end local v15    # "home":Landroid/content/ComponentName;
    .end local v16    # "homeInstaller":Ljava/lang/String;
    .end local v17    # "homeInfo":Landroid/content/pm/PackageInfo;
    :catch_209
    move-exception v0

    .line 229
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "PMBA"

    const-string v2, "Unable to write package backup data file!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 8
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    invoke-direct {p0, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->getAncestralRecordVersionValue(Landroid/app/backup/BackupDataInput;)I

    move-result v0

    .line 425
    .local v0, "ancestralRecordVersion":I
    invoke-direct {p0, v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoreDataConsumer(I)Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;

    move-result-object v1

    .line 426
    .local v1, "consumer":Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;
    if-nez v1, :cond_12

    .line 427
    const-string v2, "PMBA"

    const-string v3, "Ancestral restore set version is unknown to this Android version; not restoring"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void

    .line 431
    :cond_12
    invoke-interface {v1, p1}, Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;->consumeRestoreData(Landroid/app/backup/BackupDataInput;)V

    .line 433
    return-void
.end method
