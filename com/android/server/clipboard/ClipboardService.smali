.class public Lcom/android/server/clipboard/ClipboardService;
.super Lcom/android/server/SystemService;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;,
        Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;,
        Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    }
.end annotation


# static fields
.field private static final IS_EMULATOR:Z

.field private static final TAG:Ljava/lang/String; = "ClipboardService"


# instance fields
.field private final mAm:Landroid/app/IActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mClipboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field private mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

.field private mHostMonitorThread:Ljava/lang/Thread;

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUm:Landroid/os/IUserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 142
    const-string/jumbo v0, "ro.kernel.qemu"

    .line 143
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/clipboard/ClipboardService;->IS_EMULATOR:Z

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 159
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    .line 151
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mHostMonitorThread:Ljava/lang/Thread;

    .line 153
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    .line 161
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    .line 162
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 163
    const-string/jumbo v1, "user"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/os/IUserManager;

    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    .line 164
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 165
    nop

    .line 167
    .local v0, "permOwner":Landroid/os/IBinder;
    :try_start_39
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const-string v2, "clipboard"

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_41} :catch_43

    move-object v0, v1

    .line 170
    goto :goto_4b

    .line 168
    :catch_43
    move-exception v1

    .line 169
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "clipboard"

    const-string v3, "AM dead"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4b
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 172
    sget-boolean v1, Lcom/android/server/clipboard/ClipboardService;->IS_EMULATOR:Z

    if-eqz v1, :cond_6b

    .line 173
    new-instance v1, Lcom/android/server/clipboard/HostClipboardMonitor;

    new-instance v2, Lcom/android/server/clipboard/ClipboardService$1;

    invoke-direct {v2, p0}, Lcom/android/server/clipboard/ClipboardService$1;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    invoke-direct {v1, v2}, Lcom/android/server/clipboard/HostClipboardMonitor;-><init>(Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;)V

    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    .line 187
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mHostMonitorThread:Ljava/lang/Thread;

    .line 188
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mHostMonitorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 190
    :cond_6b
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/clipboard/ClipboardService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboard/ClipboardService;

    .line 139
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/clipboard/ClipboardService;
    .param p1, "x1"    # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;I)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/clipboard/ClipboardService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/clipboard/ClipboardService;
    .param p1, "x1"    # Landroid/content/ClipData;
    .param p2, "x2"    # I

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkDataOwnerLocked(Landroid/content/ClipData;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/clipboard/ClipboardService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboard/ClipboardService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->isDeviceLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/clipboard/ClipboardService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboard/ClipboardService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    return-object v0
.end method

.method private final addActiveOwnerLocked(ILjava/lang/String;)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 558
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 559
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 560
    .local v1, "targetUserHandle":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 562
    .local v2, "oldIdentity":J
    const/4 v4, 0x0

    :try_start_d
    invoke-interface {v0, p2, v4, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 563
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_3d

    .line 566
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v6

    if-eqz v6, :cond_1e

    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    goto :goto_5a

    .line 567
    .restart local v5    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1e
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calling uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " does not own package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 564
    :cond_3d
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_54} :catch_59
    .catchall {:try_start_d .. :try_end_54} :catchall_54

    .line 573
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_54
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 570
    :catch_59
    move-exception v5

    .line 573
    :goto_5a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 574
    nop

    .line 575
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v5

    .line 576
    .local v5, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v6, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v6, :cond_8e

    iget-object v6, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v6, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8e

    .line 577
    iget-object v6, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    .line 578
    .local v6, "N":I
    nop

    .local v4, "i":I
    :goto_75
    if-ge v4, v6, :cond_89

    .line 579
    iget-object v7, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v7, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    iget v8, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    .line 580
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 579
    invoke-direct {p0, v7, v8, p2, v9}, Lcom/android/server/clipboard/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;ILjava/lang/String;I)V

    .line 578
    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    .line 582
    .end local v4    # "i":I
    :cond_89
    iget-object v4, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 584
    .end local v6    # "N":I
    :cond_8e
    return-void
.end method

.method private final checkDataOwnerLocked(Landroid/content/ClipData;I)V
    .registers 6
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "uid"    # I

    .line 522
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 523
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 524
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService;->checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 526
    .end local v1    # "i":I
    :cond_11
    return-void
.end method

.method private final checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V
    .registers 5
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "uid"    # I

    .line 512
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 513
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 515
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 516
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 517
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 519
    :cond_20
    return-void
.end method

.method private final checkUriOwnerLocked(Landroid/net/Uri;I)V
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sourceUid"    # I

    .line 495
    if-eqz p1, :cond_33

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_33

    .line 497
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 500
    .local v0, "ident":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    .line 501
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    .line 503
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {p1, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v7

    .line 500
    move v3, p2

    invoke-interface/range {v2 .. v7}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_27} :catch_2d
    .catchall {:try_start_13 .. :try_end_27} :catchall_28

    goto :goto_2e

    .line 507
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 504
    :catch_2d
    move-exception v2

    .line 507
    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 508
    nop

    .line 509
    return-void

    .line 495
    .end local v0    # "ident":J
    :cond_33
    :goto_33
    return-void
.end method

.method private clipboardAccessAllowed(ILjava/lang/String;I)Z
    .registers 9
    .param p1, "op"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 624
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p3, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 625
    return v1

    .line 629
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 630
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 629
    invoke-interface {v0, p2, v2}, Landroid/content/pm/IPackageManager;->isInstantApp(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 631
    const/4 v0, 0x1

    return v0

    .line 634
    :cond_1a
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v0, p3}, Landroid/app/IActivityManager;->isAppForeground(I)Z

    move-result v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_20} :catch_21

    return v0

    .line 635
    :catch_21
    move-exception v0

    .line 636
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "clipboard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get Instant App status for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 638
    return v1
.end method

.method private getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .registers 2

    .line 344
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    return-object v0
.end method

.method private getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .registers 5
    .param p1, "userId"    # I

    .line 348
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v0

    .line 349
    :try_start_3
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .line 350
    .local v1, "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    if-nez v1, :cond_18

    .line 351
    new-instance v2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    invoke-direct {v2, p0, p1}, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/clipboard/ClipboardService;I)V

    move-object v1, v2

    .line 352
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 354
    :cond_18
    monitor-exit v0

    return-object v1

    .line 355
    .end local v1    # "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private final grantItemLocked(Landroid/content/ClipData$Item;ILjava/lang/String;I)V
    .registers 7
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "sourceUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I

    .line 548
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 549
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->grantUriLocked(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 551
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 552
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 553
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->grantUriLocked(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 555
    :cond_20
    return-void
.end method

.method private final grantUriLocked(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sourceUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I

    .line 530
    if-eqz p1, :cond_36

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_36

    .line 532
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 534
    .local v0, "ident":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 535
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    .line 537
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {p1, v4}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    .line 534
    move v4, p2

    move-object v5, p3

    move v9, p4

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2a} :catch_30
    .catchall {:try_start_13 .. :try_end_2a} :catchall_2b

    goto :goto_31

    .line 542
    :catchall_2b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 539
    :catch_30
    move-exception v2

    .line 542
    :goto_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 543
    nop

    .line 544
    return-void

    .line 530
    .end local v0    # "ident":J
    :cond_36
    :goto_36
    return-void
.end method

.method private hasRestriction(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 378
    :catch_7
    move-exception v0

    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ClipboardService"

    const-string v2, "Remote Exception calling UserManager.getUserRestrictions: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    const/4 v1, 0x1

    return v1
.end method

.method private isDeviceLocked()Z
    .registers 6

    .line 483
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 484
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 486
    .local v1, "token":J
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/app/KeyguardManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 488
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v3, :cond_1e

    invoke-virtual {v3, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v4
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_23

    if-eqz v4, :cond_1e

    const/4 v4, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x0

    .line 490
    :goto_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    return v4

    .line 490
    .end local v3    # "keyguardManager":Landroid/app/KeyguardManager;
    :catchall_23
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private final revokeItemLocked(Landroid/content/ClipData$Item;I)V
    .registers 5
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "sourceUid"    # I

    .line 603
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 604
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->revokeUriLocked(Landroid/net/Uri;I)V

    .line 606
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 607
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 608
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/clipboard/ClipboardService;->revokeUriLocked(Landroid/net/Uri;I)V

    .line 610
    :cond_20
    return-void
.end method

.method private final revokeUriLocked(Landroid/net/Uri;I)V
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sourceUid"    # I

    .line 587
    if-eqz p1, :cond_33

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_33

    .line 589
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 591
    .local v0, "ident":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 592
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    .line 594
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {p1, v6}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    .line 591
    invoke-interface {v2, v3, v4, v5, v6}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_27} :catch_2d
    .catchall {:try_start_13 .. :try_end_27} :catchall_28

    goto :goto_2e

    .line 598
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 595
    :catch_2d
    move-exception v2

    .line 598
    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    nop

    .line 600
    return-void

    .line 587
    .end local v0    # "ident":J
    :cond_33
    :goto_33
    return-void
.end method

.method private final revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .registers 6
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .line 613
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_5

    .line 614
    return-void

    .line 616
    :cond_5
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 617
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1c

    .line 618
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    iget v3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/clipboard/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;I)V

    .line 617
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 620
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method


# virtual methods
.method getRelatedProfiles(I)Ljava/util/List;
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 360
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 362
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_13
    .catchall {:try_start_4 .. :try_end_b} :catchall_11

    .line 367
    .local v2, "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 368
    nop

    .line 367
    nop

    .line 369
    return-object v2

    .line 367
    .end local v2    # "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_11
    move-exception v2

    goto :goto_2f

    .line 363
    :catch_13
    move-exception v2

    .line 364
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_14
    const-string v3, "ClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception calling UserManager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_11

    .line 365
    const/4 v3, 0x0

    .line 367
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    return-object v3

    .line 367
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onCleanupUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 199
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v0

    .line 200
    :try_start_3
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 201
    monitor-exit v0

    .line 202
    return-void

    .line 201
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public onStart()V
    .registers 4

    .line 194
    const-string v0, "clipboard"

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 195
    return-void
.end method

.method setPrimaryClipInternal(Landroid/content/ClipData;I)V
    .registers 12
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callingUid"    # I

    .line 387
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 388
    if-nez p1, :cond_f

    .line 390
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/android/server/clipboard/HostClipboardMonitor;->setHostClipboard(Ljava/lang/String;)V

    goto :goto_28

    .line 391
    :cond_f
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_28

    .line 392
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 393
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_28

    .line 394
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/clipboard/HostClipboardMonitor;->setHostClipboard(Ljava/lang/String;)V

    .line 400
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_28
    :goto_28
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 401
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;I)V

    .line 404
    invoke-virtual {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 405
    .local v2, "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v2, :cond_8c

    .line 406
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 407
    .local v3, "size":I
    const/4 v4, 0x1

    if-le v3, v4, :cond_8c

    .line 408
    const-string/jumbo v5, "no_cross_profile_copy_paste"

    invoke-direct {p0, v5, v0}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v5

    xor-int/2addr v5, v4

    .line 412
    .local v5, "canCopy":Z
    if-nez v5, :cond_4c

    .line 413
    const/4 p1, 0x0

    goto :goto_6b

    .line 419
    :cond_4c
    new-instance v6, Landroid/content/ClipData;

    invoke-direct {v6, p1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    move-object p1, v6

    .line 420
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v4

    .line 420
    .local v6, "i":I
    :goto_57
    if-ltz v6, :cond_68

    .line 421
    new-instance v7, Landroid/content/ClipData$Item;

    invoke-virtual {p1, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/ClipData$Item;-><init>(Landroid/content/ClipData$Item;)V

    invoke-virtual {p1, v6, v7}, Landroid/content/ClipData;->setItemAt(ILandroid/content/ClipData$Item;)V

    .line 420
    add-int/lit8 v6, v6, -0x1

    goto :goto_57

    .line 423
    .end local v6    # "i":I
    :cond_68
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->fixUrisLight(I)V

    .line 425
    :goto_6b
    nop

    .line 425
    .local v1, "i":I
    :goto_6c
    if-ge v1, v3, :cond_8c

    .line 426
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 427
    .local v6, "id":I
    if-eq v6, v0, :cond_89

    .line 428
    const-string/jumbo v7, "no_sharing_into_profile"

    invoke-direct {p0, v7, v6}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v7

    xor-int/2addr v7, v4

    .line 430
    .local v7, "canCopyIntoProfile":Z
    if-eqz v7, :cond_89

    .line 431
    invoke-direct {p0, v6}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v8

    invoke-virtual {p0, v8, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;I)V

    .line 425
    .end local v6    # "id":I
    .end local v7    # "canCopyIntoProfile":Z
    :cond_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 437
    .end local v1    # "i":I
    .end local v3    # "size":I
    .end local v5    # "canCopy":Z
    :cond_8c
    return-void
.end method

.method setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;I)V
    .registers 12
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .param p2, "clip"    # Landroid/content/ClipData;
    .param p3, "callingUid"    # I

    .line 441
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    .line 442
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 443
    if-nez p2, :cond_f

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_f

    .line 444
    return-void

    .line 446
    :cond_f
    iput-object p2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 447
    if-eqz p2, :cond_16

    .line 448
    iput p3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    goto :goto_1a

    .line 450
    :cond_16
    const/16 v0, 0x270f

    iput v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    .line 452
    :goto_1a
    if-eqz p2, :cond_29

    .line 453
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 454
    .local v0, "description":Landroid/content/ClipDescription;
    if-eqz v0, :cond_29

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ClipDescription;->setTimestamp(J)V

    .line 458
    .end local v0    # "description":Landroid/content/ClipDescription;
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 459
    .local v0, "ident":J
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 461
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    if-ge v3, v2, :cond_64

    .line 463
    :try_start_36
    iget-object v4, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 464
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    .line 466
    .local v4, "li":Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    const/16 v5, 0x1d

    iget-object v6, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    iget v7, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 468
    iget-object v5, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/content/IOnPrimaryClipChangedListener;

    .line 469
    invoke-interface {v5}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_55} :catch_60
    .catchall {:try_start_36 .. :try_end_55} :catchall_56

    .line 474
    .end local v4    # "li":Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    :cond_55
    goto :goto_61

    .line 477
    .end local v3    # "i":I
    :catchall_56
    move-exception v3

    iget-object v4, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 478
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 471
    .restart local v3    # "i":I
    :catch_60
    move-exception v4

    .line 461
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 477
    .end local v3    # "i":I
    :cond_64
    iget-object v3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 478
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 479
    nop

    .line 480
    return-void
.end method
