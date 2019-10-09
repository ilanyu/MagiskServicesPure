.class public Lcom/android/server/usb/UsbDebuggingManager;
.super Ljava/lang/Object;
.source "UsbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;,
        Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
    }
.end annotation


# static fields
.field private static final ADBD_SOCKET:Ljava/lang/String; = "adbd"

.field private static final ADB_DIRECTORY:Ljava/lang/String; = "misc/adb"

.field private static final ADB_KEYS_FILE:Ljava/lang/String; = "adb_keys"

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbDebuggingManager"


# instance fields
.field private mAdbEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mFingerprints:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z

    .line 72
    new-instance v0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;-><init>(Lcom/android/server/usb/UsbDebuggingManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    .line 73
    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbDebuggingManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;

    .line 56
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbDebuggingManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;

    .line 56
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/usb/UsbDebuggingManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;

    .line 56
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/usb/UsbDebuggingManager;Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;
    .param p1, "x1"    # Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    .line 56
    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;

    .line 56
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDebuggingManager;->writeKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->startConfirmation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbDebuggingManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;

    .line 56
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->deleteKeyFile()V

    return-void
.end method

.method private createConfirmationIntent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fingerprints"    # Ljava/lang/String;

    .line 386
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 387
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string v1, "fingerprints"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    return-object v0
.end method

.method private deleteKeyFile()V
    .registers 2

    .line 431
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v0

    .line 432
    .local v0, "keyFile":Ljava/io/File;
    if-eqz v0, :cond_9

    .line 433
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 435
    :cond_9
    return-void
.end method

.method private getFingerprints(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    .line 294
    const-string v0, "0123456789ABCDEF"

    .line 295
    .local v0, "hex":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_c

    .line 299
    const-string v2, ""

    return-object v2

    .line 303
    :cond_c
    :try_start_c
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_64

    .line 307
    .local v2, "digester":Ljava/security/MessageDigest;
    nop

    .line 306
    nop

    .line 309
    const-string v3, "\\s+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 312
    .local v3, "base64_data":[B
    :try_start_21
    invoke-static {v3, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_29} :catch_59

    .line 316
    .local v5, "digest":[B
    nop

    .line 315
    nop

    .line 317
    nop

    .local v4, "i":I
    :goto_2c
    array-length v6, v5

    if-ge v4, v6, :cond_54

    .line 318
    aget-byte v6, v5, v4

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    aget-byte v6, v5, v4

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_51

    .line 321
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 323
    .end local v4    # "i":I
    :cond_54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 313
    .end local v5    # "digest":[B
    :catch_59
    move-exception v4

    .line 314
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "UsbDebuggingManager"

    const-string v6, "error doing base64 decoding"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    const-string v5, ""

    return-object v5

    .line 304
    .end local v2    # "digester":Ljava/security/MessageDigest;
    .end local v3    # "base64_data":[B
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_64
    move-exception v2

    .line 305
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "UsbDebuggingManager"

    const-string v4, "Error getting digester"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    const-string v3, ""

    return-object v3
.end method

.method private getUserKeyFile()Ljava/io/File;
    .registers 5

    .line 394
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 395
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "misc/adb"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 397
    .local v1, "adbDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 398
    const-string v2, "UsbDebuggingManager"

    const-string v3, "ADB data directory does not exist"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v2, 0x0

    return-object v2

    .line 402
    :cond_1b
    new-instance v2, Ljava/io/File;

    const-string v3, "adb_keys"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private startConfirmation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fingerprints"    # Ljava/lang/String;

    .line 327
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 328
    .local v0, "currentUserId":I
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 330
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 331
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040131

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "componentString":Ljava/lang/String;
    goto :goto_2b

    .line 336
    .end local v2    # "componentString":Ljava/lang/String;
    :cond_20
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040132

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 339
    .restart local v2    # "componentString":Ljava/lang/String;
    :goto_2b
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 340
    .local v3, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v3, v4, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 341
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v3, v4, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    goto :goto_61

    .line 345
    :cond_44
    const-string v4, "UsbDebuggingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to start customAdbPublicKeyConfirmation[SecondaryUser]Component "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " as an Activity or a Service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void

    .line 343
    :cond_61
    :goto_61
    return-void
.end method

.method private startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "fingerprints"    # Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 355
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/usb/UsbDebuggingManager;->createConfirmationIntent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 356
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 357
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 359
    :try_start_17
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_1c} :catch_1e

    .line 360
    const/4 v2, 0x1

    return v2

    .line 361
    :catch_1e
    move-exception v2

    .line 362
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "UsbDebuggingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to start adb whitelist activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :cond_36
    const/4 v2, 0x0

    return v2
.end method

.method private startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "fingerprints"    # Ljava/lang/String;

    .line 373
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/usb/UsbDebuggingManager;->createConfirmationIntent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 375
    .local v0, "intent":Landroid/content/Intent;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_a} :catch_f

    if-eqz v1, :cond_e

    .line 376
    const/4 v1, 0x1

    return v1

    .line 380
    :cond_e
    goto :goto_27

    .line 378
    :catch_f
    move-exception v1

    .line 379
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "UsbDebuggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to start adb whitelist service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_27
    const/4 v1, 0x0

    return v1
.end method

.method private writeKey(Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 407
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v0

    .line 409
    .local v0, "keyFile":Ljava/io/File;
    if-nez v0, :cond_7

    .line 410
    return-void

    .line 413
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 414
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 415
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a0

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 420
    :cond_1a
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 421
    .local v1, "fo":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 422
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 423
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2f} :catch_30

    .line 427
    .end local v0    # "keyFile":Ljava/io/File;
    .end local v1    # "fo":Ljava/io/FileOutputStream;
    goto :goto_47

    .line 425
    :catch_30
    move-exception v0

    .line 426
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "UsbDebuggingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_47
    return-void
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .registers 5
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 444
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 445
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 446
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 447
    return-void
.end method

.method public clearUsbDebuggingKeys()V
    .registers 3

    .line 454
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 455
    return-void
.end method

.method public denyUsbDebugging()V
    .registers 3

    .line 450
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 451
    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 14
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 461
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 463
    .local v0, "token":J
    const-string v2, "connected_to_adb"

    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager;->mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    const/4 v4, 0x0

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_e

    :cond_d
    move v3, v4

    :goto_e
    const-wide v5, 0x10800000001L

    invoke-virtual {p1, v2, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 464
    const-string/jumbo v2, "last_key_received"

    const-wide v5, 0x10900000002L

    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;

    invoke-static {p1, v2, v5, v6, v3}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 468
    const/4 v2, 0x0

    :try_start_24
    const-string/jumbo v3, "user_keys"

    const-wide v5, 0x10900000003L

    new-instance v7, Ljava/io/File;

    const-string v8, "/data/misc/adb/adb_keys"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 469
    invoke-static {v7, v4, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 468
    invoke-virtual {p1, v3, v5, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3a} :catch_3b

    .line 472
    goto :goto_43

    .line 470
    :catch_3b
    move-exception v3

    .line 471
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "UsbDebuggingManager"

    const-string v6, "Cannot read user keys"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    .end local v3    # "e":Ljava/io/IOException;
    :goto_43
    :try_start_43
    const-string/jumbo v3, "system_keys"

    const-wide v5, 0x10900000004L

    new-instance v7, Ljava/io/File;

    const-string v8, "/adb_keys"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-static {v7, v4, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-virtual {p1, v3, v5, v6, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_59} :catch_5a

    .line 479
    goto :goto_62

    .line 477
    :catch_5a
    move-exception v2

    .line 478
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "UsbDebuggingManager"

    const-string v4, "Cannot read system keys"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    .end local v2    # "e":Ljava/io/IOException;
    :goto_62
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 482
    return-void
.end method

.method public setAdbEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 438
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    .line 439
    :cond_6
    const/4 v1, 0x2

    .line 438
    :goto_7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 440
    return-void
.end method
