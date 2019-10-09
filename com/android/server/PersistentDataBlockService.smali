.class public Lcom/android/server/PersistentDataBlockService;
.super Lcom/android/server/SystemService;
.source "PersistentDataBlockService.java"


# static fields
.field public static final DIGEST_SIZE_BYTES:I = 0x20

.field private static final FLASH_LOCK_LOCKED:Ljava/lang/String; = "1"

.field private static final FLASH_LOCK_PROP:Ljava/lang/String; = "ro.boot.flash.locked"

.field private static final FLASH_LOCK_UNLOCKED:Ljava/lang/String; = "0"

.field private static final FRP_CREDENTIAL_RESERVED_SIZE:I = 0x3e8

.field private static final HEADER_SIZE:I = 0x8

.field private static final MAX_DATA_BLOCK_SIZE:I = 0x19000

.field private static final MAX_FRP_CREDENTIAL_HANDLE_SIZE:I = 0x3e4

.field private static final OEM_UNLOCK_PROP:Ljava/lang/String; = "sys.oem_unlock_allowed"

.field private static final PARTITION_TYPE_MARKER:I = 0x19901873

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllowedUid:I

.field private mBlockDeviceSize:J

.field private final mContext:Landroid/content/Context;

.field private final mDataBlockFile:Ljava/lang/String;

.field private final mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

.field private mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

.field private mIsWritable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    const-class v0, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    .line 97
    iput-boolean v1, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    .line 393
    new-instance v0, Lcom/android/server/PersistentDataBlockService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PersistentDataBlockService$1;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    .line 595
    new-instance v0, Lcom/android/server/PersistentDataBlockService$2;

    invoke-direct {v0, p0}, Lcom/android/server/PersistentDataBlockService$2;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

    .line 102
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 103
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 104
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/PersistentDataBlockService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;
    .param p1, "x1"    # I

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/PersistentDataBlockService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .line 69
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetMaximumDataBlockSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->nativeWipe(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .line 69
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceIsAdmin()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->enforceUserRestriction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/PersistentDataBlockService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;
    .param p1, "x1"    # Z

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .line 69
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockReadPermission()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .line 69
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .line 69
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/PersistentDataBlockService;)Lcom/android/server/PersistentDataBlockManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .line 69
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/PersistentDataBlockService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .line 69
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .line 69
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 69
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .line 69
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .line 69
    iget-boolean v0, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/PersistentDataBlockService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;
    .param p1, "x1"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .line 69
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .line 69
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;
    .param p1, "x1"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .line 69
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockWritePermission()V

    return-void
.end method

.method private computeAndWriteDigestLocked()Z
    .registers 7

    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v0

    .line 241
    .local v0, "digest":[B
    const/4 v1, 0x0

    if-eqz v0, :cond_46

    .line 244
    :try_start_8
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_19} :catch_3c

    .line 249
    .local v2, "outputStream":Ljava/io/DataOutputStream;
    nop

    .line 248
    nop

    .line 252
    const/16 v3, 0x20

    :try_start_1d
    invoke-virtual {v2, v0, v1, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 253
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_23} :catch_2b
    .catchall {:try_start_1d .. :try_end_23} :catchall_29

    .line 258
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 259
    nop

    .line 260
    const/4 v1, 0x1

    return v1

    .line 258
    :catchall_29
    move-exception v1

    goto :goto_38

    .line 254
    :catch_2b
    move-exception v3

    .line 255
    .local v3, "e":Ljava/io/IOException;
    :try_start_2c
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v5, "failed to write block checksum"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    .line 256
    nop

    .line 258
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 256
    return v1

    .line 258
    .end local v3    # "e":Ljava/io/IOException;
    :goto_38
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 246
    .end local v2    # "outputStream":Ljava/io/DataOutputStream;
    :catch_3c
    move-exception v2

    .line 247
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "partition not available?"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    return v1

    .line 262
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_46
    return v1
.end method

.method private computeDigestLocked([B)[B
    .registers 10
    .param p1, "storedDigest"    # [B

    .line 269
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_12} :catch_68

    .line 273
    .local v1, "inputStream":Ljava/io/DataInputStream;
    nop

    .line 272
    nop

    .line 277
    :try_start_14
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_14 .. :try_end_1a} :catch_5c

    .line 283
    .local v2, "md":Ljava/security/MessageDigest;
    nop

    .line 282
    nop

    .line 286
    const/16 v3, 0x20

    if-eqz p1, :cond_2b

    :try_start_20
    array-length v4, p1

    if-ne v4, v3, :cond_2b

    .line 287
    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->read([B)I

    goto :goto_2e

    .line 302
    :catchall_27
    move-exception v0

    goto :goto_58

    .line 298
    :catch_29
    move-exception v3

    goto :goto_4b

    .line 289
    :cond_2b
    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 293
    :goto_2e
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 294
    .local v4, "data":[B
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 295
    :goto_36
    invoke-virtual {v1, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    move v6, v3

    .line 295
    .local v6, "read":I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_42

    .line 296
    invoke-virtual {v2, v4, v5, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_41} :catch_29
    .catchall {:try_start_20 .. :try_end_41} :catchall_27

    goto :goto_36

    .line 302
    .end local v4    # "data":[B
    .end local v6    # "read":I
    :cond_42
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 303
    nop

    .line 305
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    .line 298
    :goto_4b
    nop

    .line 299
    .local v3, "e":Ljava/io/IOException;
    :try_start_4c
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v5, "failed to read partition"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_27

    .line 300
    nop

    .line 302
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 300
    return-object v0

    .line 302
    .end local v3    # "e":Ljava/io/IOException;
    :goto_58
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 278
    .end local v2    # "md":Ljava/security/MessageDigest;
    :catch_5c
    move-exception v2

    .line 280
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "SHA-256 not supported?"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 282
    return-object v0

    .line 270
    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_68
    move-exception v1

    .line 271
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "partition not available?"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    return-object v0
.end method

.method private doGetMaximumDataBlockSize()J
    .registers 6

    .line 385
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x20

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 387
    .local v0, "actualSize":J
    const-wide/32 v2, 0x19000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_19

    move-wide v2, v0

    nop

    :cond_19
    return-wide v2
.end method

.method private doGetOemUnlockEnabled()Z
    .registers 8

    .line 365
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_12} :catch_46

    .line 369
    .local v1, "inputStream":Ljava/io/DataInputStream;
    nop

    .line 368
    nop

    .line 372
    :try_start_14
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_34
    .catchall {:try_start_14 .. :try_end_17} :catchall_32

    .line 373
    :try_start_17
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/io/DataInputStream;->skip(J)J

    .line 374
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, 0x1

    goto :goto_2a

    :cond_29
    move v3, v0

    :goto_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_2f

    .line 380
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 374
    return v3

    .line 375
    :catchall_2f
    move-exception v3

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v3
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_32} :catch_34
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 380
    :catchall_32
    move-exception v0

    goto :goto_42

    .line 376
    :catch_34
    move-exception v2

    .line 377
    .local v2, "e":Ljava/io/IOException;
    :try_start_35
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unable to access persistent partition"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_32

    .line 378
    nop

    .line 380
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 378
    return v0

    .line 380
    .end local v2    # "e":Ljava/io/IOException;
    :goto_42
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 366
    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    :catch_46
    move-exception v1

    .line 367
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "partition not available"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return v0
.end method

.method private doSetOemUnlockEnabledLocked(Z)V
    .registers 8
    .param p1, "enabled"    # Z

    .line 337
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_c} :catch_6c

    .line 341
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    nop

    .line 340
    nop

    .line 344
    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 346
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 348
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 349
    .local v2, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 350
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 351
    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 352
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2d} :catch_41
    .catchall {:try_start_e .. :try_end_2d} :catchall_3f

    .line 357
    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    .end local v2    # "data":Ljava/nio/ByteBuffer;
    const-string/jumbo v1, "sys.oem_unlock_allowed"

    if-eqz p1, :cond_35

    const-string v2, "1"

    goto :goto_37

    :cond_35
    const-string v2, "0"

    :goto_37
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 359
    nop

    .line 360
    return-void

    .line 357
    :catchall_3f
    move-exception v1

    goto :goto_5b

    .line 353
    :catch_41
    move-exception v1

    .line 354
    .local v1, "e":Ljava/io/IOException;
    :try_start_42
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unable to access persistent partition"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_3f

    .line 357
    const-string/jumbo v2, "sys.oem_unlock_allowed"

    if-eqz p1, :cond_52

    const-string v3, "1"

    goto :goto_54

    :cond_52
    const-string v3, "0"

    :goto_54
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 355
    return-void

    .line 357
    .end local v1    # "e":Ljava/io/IOException;
    :goto_5b
    if-eqz p1, :cond_60

    const-string v2, "1"

    goto :goto_62

    :cond_60
    const-string v2, "0"

    :goto_62
    const-string/jumbo v3, "sys.oem_unlock_allowed"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 338
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    :catch_6c
    move-exception v0

    .line 339
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "partition not available"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    return-void
.end method

.method private enforceChecksumValidity()Z
    .registers 6

    .line 225
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 227
    .local v0, "storedDigest":[B
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_7
    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v2

    .line 229
    .local v2, "digest":[B
    if-eqz v2, :cond_17

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_17

    .line 234
    .end local v2    # "digest":[B
    :cond_14
    monitor-exit v1

    .line 236
    const/4 v1, 0x1

    return v1

    .line 230
    .restart local v2    # "digest":[B
    :cond_17
    :goto_17
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "Formatting FRP partition..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked(Z)V

    .line 232
    monitor-exit v1

    return v3

    .line 234
    .end local v2    # "digest":[B
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v2
.end method

.method private enforceIsAdmin()V
    .registers 5

    .line 185
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 186
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v1

    .line 187
    .local v1, "isAdmin":Z
    if-eqz v1, :cond_11

    .line 191
    return-void

    .line 188
    :cond_11
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only the Admin user is allowed to change OEM unlock state"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private enforceOemUnlockReadPermission()V
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.OEM_UNLOCK_STATE"

    .line 165
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_16

    goto :goto_1e

    .line 167
    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can\'t access OEM unlock state. Requires READ_OEM_UNLOCK_STATE or OEM_UNLOCK_STATE permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1e
    :goto_1e
    return-void
.end method

.method private enforceOemUnlockWritePermission()V
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OEM_UNLOCK_STATE"

    const-string v2, "Can\'t modify OEM unlock state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method private enforceUid(I)V
    .registers 5
    .param p1, "callingUid"    # I

    .line 179
    iget v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    if-ne p1, v0, :cond_5

    .line 182
    return-void

    .line 180
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not allowed to access PST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceUserRestriction(Ljava/lang/String;)V
    .registers 5
    .param p1, "userRestriction"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 198
    return-void

    .line 195
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OEM unlock is disallowed by user restriction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private formatIfOemUnlockEnabled()V
    .registers 4

    .line 152
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result v0

    .line 153
    .local v0, "enabled":Z
    if-eqz v0, :cond_12

    .line 154
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    const/4 v2, 0x1

    :try_start_a
    invoke-direct {p0, v2}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked(Z)V

    .line 156
    monitor-exit v1

    goto :goto_12

    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v2

    .line 159
    :cond_12
    :goto_12
    const-string/jumbo v1, "sys.oem_unlock_allowed"

    if-eqz v0, :cond_1a

    const-string v2, "1"

    goto :goto_1c

    :cond_1a
    const-string v2, "0"

    :goto_1c
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method private formatPartitionLocked(Z)V
    .registers 7
    .param p1, "setOemUnlockEnabled"    # Z

    .line 311
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_11} :catch_44

    .line 315
    .local v0, "outputStream":Ljava/io/DataOutputStream;
    nop

    .line 314
    nop

    .line 317
    const/16 v1, 0x20

    new-array v2, v1, [B

    .line 319
    .local v2, "data":[B
    const/4 v3, 0x0

    :try_start_18
    invoke-virtual {v0, v2, v3, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 320
    const v1, 0x19901873

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 321
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 322
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_27} :catch_34
    .catchall {:try_start_18 .. :try_end_27} :catchall_32

    .line 327
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 328
    nop

    .line 330
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    .line 331
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    .line 332
    return-void

    .line 327
    :catchall_32
    move-exception v1

    goto :goto_40

    .line 323
    :catch_34
    move-exception v1

    .line 324
    .local v1, "e":Ljava/io/IOException;
    :try_start_35
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "failed to format block"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_32

    .line 327
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 325
    return-void

    .line 327
    .end local v1    # "e":Ljava/io/IOException;
    :goto_40
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 312
    .end local v0    # "outputStream":Ljava/io/DataOutputStream;
    .end local v2    # "data":[B
    :catch_44
    move-exception v0

    .line 313
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "partition not available?"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    return-void
.end method

.method private getAllowedUid(I)I
    .registers 9
    .param p1, "userHandle"    # I

    .line 108
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    const v1, 0x1040173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "allowedPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 111
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, -0x1

    .line 113
    .local v2, "allowedUid":I
    const/high16 v3, 0x100000

    :try_start_16
    invoke-virtual {v1, v0, v3, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v3
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_1a} :catch_1c

    move v2, v3

    .line 118
    goto :goto_34

    .line 115
    :catch_1c
    move-exception v3

    .line 117
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not able to find package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_34
    return v2
.end method

.method private getBlockDeviceSize()J
    .registers 6

    .line 215
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_13

    .line 217
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/PersistentDataBlockService;->nativeGetBlockDeviceSize(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 219
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_17

    .line 221
    iget-wide v0, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    return-wide v0

    .line 219
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    .registers 4
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 205
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 206
    .local v0, "blockId":I
    const v1, 0x19901873

    if-ne v0, v1, :cond_13

    .line 207
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .local v1, "totalDataSize":I
    goto :goto_14

    .line 209
    .end local v1    # "totalDataSize":I
    :cond_13
    const/4 v1, 0x0

    .line 211
    .restart local v1    # "totalDataSize":I
    :goto_14
    return v1
.end method

.method public static synthetic lambda$onStart$0(Lcom/android/server/PersistentDataBlockService;)V
    .registers 3

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->getAllowedUid(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    .line 127
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z

    .line 128
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->formatIfOemUnlockEnabled()V

    .line 129
    const-string/jumbo v0, "persistent_data_block"

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PersistentDataBlockService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 131
    return-void
.end method

.method private native nativeGetBlockDeviceSize(Ljava/lang/String;)J
.end method

.method private native nativeWipe(Ljava/lang/String;)I
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 6
    .param p1, "phase"    # I

    .line 137
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_5d

    .line 139
    :try_start_4
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_e} :catch_37

    if-eqz v0, :cond_19

    .line 145
    nop

    .line 146
    const-class v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_5d

    .line 140
    :cond_19
    :try_start_19
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " init timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_37} :catch_37

    .line 142
    :catch_37
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 144
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " init interrupted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 148
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_5d
    :goto_5d
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 149
    return-void
.end method

.method public onStart()V
    .registers 5

    .line 125
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$PersistentDataBlockService$EZl9OYaT2eNL7kfSr2nKUBjxidk;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$PersistentDataBlockService$EZl9OYaT2eNL7kfSr2nKUBjxidk;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".onStart"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 132
    return-void
.end method
