.class public Lcom/android/server/wallpaper/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Lcom/android/server/wallpaper/IWallpaperManagerService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;,
        Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUG_LIVE:Z = true

.field static final MAX_WALLPAPER_COMPONENT_LOG_LENGTH:I = 0x80

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "WallpaperManagerService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper_orig"

.field static final WALLPAPER_CROP:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field static final WALLPAPER_LOCK_CROP:Ljava/lang/String; = "wallpaper_lock"

.field static final WALLPAPER_LOCK_ORIG:Ljava/lang/String; = "wallpaper_lock_orig"

.field static final sPerUserFiles:[Ljava/lang/String;


# instance fields
.field final mAppOpsManager:Landroid/app/AppOpsManager;

.field final mColorsChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mCurrentUserId:I

.field final mDefaultWallpaperComponent:Landroid/content/ComponentName;

.field final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field final mImageWallpaper:Landroid/content/ComponentName;

.field mInAmbientMode:Z

.field mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

.field mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mLock:Ljava/lang/Object;

.field final mLockWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

.field mShuttingDown:Z

.field mThemeMode:I

.field final mUserRestorecon:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mWaitingForUnlock:Z

.field mWallpaperId:I

.field final mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 184
    const-string/jumbo v0, "wallpaper_orig"

    const-string/jumbo v1, "wallpaper"

    const-string/jumbo v2, "wallpaper_lock_orig"

    const-string/jumbo v3, "wallpaper_lock"

    const-string/jumbo v4, "wallpaper_info.xml"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1352
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 856
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 857
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    .line 859
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseArray;

    .line 860
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 1354
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 1355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    .line 1356
    nop

    .line 1357
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1356
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 1358
    invoke-static {p1}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    .line 1359
    const-string/jumbo v0, "window"

    .line 1360
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1359
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1361
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1362
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1363
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    .line 1364
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 1365
    return-void
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # I

    .line 127
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "x2"    # I

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wallpaper/WallpaperManagerService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    return-void
.end method

.method private changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2283
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_15

    .line 2284
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 2285
    if-nez p1, :cond_15

    .line 2288
    return v1

    .line 2290
    :cond_c
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2293
    return v1

    .line 2296
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .line 2494
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 2498
    return-void

    .line 2495
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static emptyCallbackList(Landroid/os/RemoteCallbackList;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/os/RemoteCallbackList<",
            "TT;>;)Z"
        }
    .end annotation

    .line 485
    .local p0, "list":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TT;>;"
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private enforceCallingOrSelfPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 10
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "message"    # Ljava/lang/String;

    .line 1860
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1863
    .local v0, "opName":Ljava/lang/String;
    if-eqz v0, :cond_36

    .line 1864
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p3, p2}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 1865
    .local v1, "appOpMode":I
    if-nez v1, :cond_14

    .end local v1    # "appOpMode":I
    goto :goto_36

    .line 1866
    .restart local v1    # "appOpMode":I
    :cond_14
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not allowed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1870
    .end local v1    # "appOpMode":I
    :cond_36
    :goto_36
    return-void
.end method

.method private ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 7
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2830
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension()I

    move-result v0

    .line 2831
    .local v0, "baseSize":I
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ge v1, v0, :cond_a

    .line 2832
    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 2834
    :cond_a
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-ge v1, v0, :cond_10

    .line 2835
    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 2838
    :cond_10
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_20

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 2839
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_2a

    .line 2840
    :cond_20
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iget v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2842
    :cond_2a
    return-void
.end method

.method private extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/graphics/Rect;)Landroid/app/WallpaperColors;
    .registers 20
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "rectOnScreen"    # Landroid/graphics/Rect;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 590
    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 593
    .local v4, "cropFile":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 595
    :try_start_a
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 597
    .local v0, "imageWallpaper":Z
    :goto_1c
    if-eqz v0, :cond_31

    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    if-eqz v6, :cond_31

    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 598
    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 600
    :cond_31
    iget v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .end local v0    # "imageWallpaper":Z
    move v0, v6

    .line 601
    .local v0, "wallpaperId":I
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_89

    .line 603
    const/4 v5, 0x0

    .line 604
    .local v5, "colors":Landroid/app/WallpaperColors;
    if-eqz v4, :cond_86

    .line 605
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 606
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_86

    .line 607
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 608
    .local v7, "wallpaperWidth":I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 610
    .local v8, "wallpaperHeight":I
    if-nez v3, :cond_4d

    .line 611
    move-object v9, v6

    .line 625
    .local v9, "targetBitmap":Landroid/graphics/Bitmap;
    move/from16 v16, v0

    move-object v0, v9

    goto :goto_7e

    .line 613
    .end local v9    # "targetBitmap":Landroid/graphics/Bitmap;
    :cond_4d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v9

    .line 614
    .local v9, "screenDisplay":Landroid/graphics/Point;
    int-to-float v10, v7

    iget v11, v9, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 615
    .local v10, "scaleX":F
    int-to-float v11, v8

    iget v12, v9, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 616
    .local v11, "scaleY":F
    iget v12, v3, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    mul-float/2addr v12, v10

    float-to-int v12, v12

    .line 617
    .local v12, "left":I
    iget v13, v3, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    mul-float/2addr v13, v11

    float-to-int v13, v13

    .line 618
    .local v13, "top":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v10

    float-to-int v14, v14

    .line 619
    .local v14, "width":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v11

    float-to-int v15, v15

    .line 620
    .local v15, "height":I
    move/from16 v16, v0

    invoke-static {v6, v12, v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 621
    .local v0, "targetBitmap":Landroid/graphics/Bitmap;
    .local v16, "wallpaperId":I
    if-eq v0, v6, :cond_7e

    .line 622
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 625
    .end local v9    # "screenDisplay":Landroid/graphics/Point;
    .end local v10    # "scaleX":F
    .end local v11    # "scaleY":F
    .end local v12    # "left":I
    .end local v13    # "top":I
    .end local v14    # "width":I
    .end local v15    # "height":I
    :cond_7e
    :goto_7e
    invoke-static {v0}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v5

    .line 626
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .end local v0    # "targetBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "wallpaperWidth":I
    .end local v8    # "wallpaperHeight":I
    goto :goto_88

    .line 629
    .end local v16    # "wallpaperId":I
    .local v0, "wallpaperId":I
    :cond_86
    move/from16 v16, v0

    .end local v0    # "wallpaperId":I
    .restart local v16    # "wallpaperId":I
    :goto_88
    return-object v5

    .line 601
    .end local v5    # "colors":Landroid/app/WallpaperColors;
    .end local v16    # "wallpaperId":I
    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit v5
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v0
.end method

.method private extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 8
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 543
    const/4 v0, 0x0

    .line 546
    .local v0, "cropFile":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 548
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v2, :cond_13

    goto :goto_15

    :cond_13
    const/4 v2, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v2, 0x1

    .line 550
    .local v2, "imageWallpaper":Z
    :goto_16
    if-eqz v2, :cond_2b

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    if-eqz v3, :cond_2b

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 551
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 553
    :cond_2b
    iget v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .end local v2    # "imageWallpaper":Z
    move v2, v3

    .line 554
    .local v2, "wallpaperId":I
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_65

    .line 556
    const/4 v1, 0x0

    .line 557
    .local v1, "colors":Landroid/app/WallpaperColors;
    if-eqz v0, :cond_3f

    .line 558
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 559
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3f

    .line 560
    invoke-static {v3}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v1

    .line 561
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 565
    .end local v1    # "colors":Landroid/app/WallpaperColors;
    .local v3, "colors":Landroid/app/WallpaperColors;
    :cond_3f
    move-object v3, v1

    if-nez v3, :cond_4a

    .line 566
    const-string v1, "WallpaperManagerService"

    const-string v4, "Cannot extract colors because wallpaper could not be read."

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    return-void

    .line 570
    :cond_4a
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 571
    :try_start_4d
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-ne v1, v2, :cond_59

    .line 572
    iput-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 575
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    goto :goto_60

    .line 577
    :cond_59
    const-string v1, "WallpaperManagerService"

    const-string v5, "Not setting primary colors since wallpaper changed"

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :goto_60
    monitor-exit v4

    .line 580
    return-void

    .line 579
    :catchall_62
    move-exception v1

    monitor-exit v4
    :try_end_64
    .catchall {:try_start_4d .. :try_end_64} :catchall_62

    throw v1

    .line 554
    .end local v2    # "wallpaperId":I
    .end local v3    # "colors":Landroid/app/WallpaperColors;
    :catchall_65
    move-exception v2

    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v2
.end method

.method private generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 20
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 671
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 673
    .local v2, "success":Z
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v3, v0

    .line 684
    .local v3, "cropHint":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v4, v0

    .line 685
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 686
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 687
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v5, :cond_15e

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v5, :cond_2b

    .line 688
    move/from16 v16, v2

    move-object/from16 v17, v3

    goto/16 :goto_162

    .line 691
    :cond_2b
    const/4 v5, 0x0

    .line 692
    .local v5, "needCrop":Z
    const/4 v6, 0x0

    .line 695
    .local v6, "needScale":Z
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_41

    .line 696
    iput v8, v3, Landroid/graphics/Rect;->top:I

    iput v8, v3, Landroid/graphics/Rect;->left:I

    .line 697
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 698
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_80

    .line 701
    :cond_41
    nop

    .line 702
    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v7, v9, :cond_4e

    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v9

    goto :goto_4f

    .line 703
    :cond_4e
    move v7, v8

    :goto_4f
    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    iget v10, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v9, v10, :cond_5b

    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    goto :goto_5c

    .line 701
    :cond_5b
    move v9, v8

    :goto_5c
    invoke-virtual {v3, v7, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 706
    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-gez v7, :cond_65

    .line 707
    iput v8, v3, Landroid/graphics/Rect;->left:I

    .line 709
    :cond_65
    iget v7, v3, Landroid/graphics/Rect;->top:I

    if-gez v7, :cond_6b

    .line 710
    iput v8, v3, Landroid/graphics/Rect;->top:I

    .line 714
    :cond_6b
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-gt v7, v9, :cond_7e

    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 715
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-le v7, v9, :cond_7c

    goto :goto_7e

    :cond_7c
    move v7, v8

    goto :goto_7f

    :cond_7e
    :goto_7e
    move v7, v0

    :goto_7f
    move v5, v7

    .line 719
    :goto_80
    iget v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-eq v7, v9, :cond_8a

    move v7, v0

    goto :goto_8b

    :cond_8a
    move v7, v8

    :goto_8b
    move v6, v7

    .line 728
    if-nez v5, :cond_a3

    if-nez v6, :cond_a3

    .line 734
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-static {v0, v7}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    .line 735
    if-nez v2, :cond_9f

    .line 736
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 811
    .end local v5    # "needCrop":Z
    .end local v6    # "needScale":Z
    :cond_9f
    move-object/from16 v17, v3

    goto/16 :goto_16a

    .line 741
    .restart local v5    # "needCrop":Z
    .restart local v6    # "needScale":Z
    :cond_a3
    const/4 v7, 0x0

    .line 742
    .local v7, "f":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    move-object v10, v9

    .line 744
    .local v10, "bos":Ljava/io/BufferedOutputStream;
    :try_start_a6
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 745
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 744
    invoke-static {v11, v8}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v11

    .line 753
    .local v11, "decoder":Landroid/graphics/BitmapRegionDecoder;
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    iget v13, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    div-int/2addr v12, v13
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b7} :catch_14f
    .catchall {:try_start_a6 .. :try_end_b7} :catchall_143

    .line 754
    .local v12, "actualScale":I
    move v13, v0

    .line 755
    .local v13, "scale":I
    :goto_b8
    const/4 v14, 0x2

    mul-int/2addr v14, v13

    if-ge v14, v12, :cond_bf

    .line 756
    mul-int/lit8 v13, v13, 0x2

    goto :goto_b8

    .line 758
    :cond_bf
    if-le v13, v0, :cond_d7

    .line 759
    :try_start_c1
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 760
    .local v9, "scaler":Landroid/graphics/BitmapFactory$Options;
    iput v13, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c8} :catch_d0
    .catchall {:try_start_c1 .. :try_end_c8} :catchall_c9

    goto :goto_d8

    .line 805
    .end local v9    # "scaler":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v12    # "actualScale":I
    .end local v13    # "scale":I
    :catchall_c9
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v17, v3

    goto/16 :goto_148

    .line 800
    :catch_d0
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v17, v3

    goto/16 :goto_154

    .line 765
    .restart local v11    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v12    # "actualScale":I
    .restart local v13    # "scale":I
    :cond_d7
    nop

    .line 767
    .restart local v9    # "scaler":Landroid/graphics/BitmapFactory$Options;
    :goto_d8
    :try_start_d8
    invoke-virtual {v11, v3, v9}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 768
    .local v14, "cropped":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_df} :catch_14f
    .catchall {:try_start_d8 .. :try_end_df} :catchall_143

    .line 770
    if-nez v14, :cond_eb

    .line 771
    :try_start_e1
    const-string v0, "WallpaperManagerService"

    const-string v8, "Could not decode new wallpaper"

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e8} :catch_d0
    .catchall {:try_start_e1 .. :try_end_e8} :catchall_c9

    .line 805
    move-object/from16 v17, v3

    goto :goto_130

    .line 776
    :cond_eb
    :try_start_eb
    invoke-virtual {v3, v8, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 777
    iget v8, v3, Landroid/graphics/Rect;->right:I

    div-int/2addr v8, v13

    iput v8, v3, Landroid/graphics/Rect;->right:I

    .line 778
    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    div-int/2addr v8, v13

    iput v8, v3, Landroid/graphics/Rect;->bottom:I

    .line 779
    iget v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    int-to-float v8, v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v8, v15

    .line 783
    .local v8, "heightR":F
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v8

    float-to-int v15, v15

    .line 784
    .local v15, "destWidth":I
    iget v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_10a} :catch_14f
    .catchall {:try_start_eb .. :try_end_10a} :catchall_143

    move/from16 v16, v2

    const/4 v2, 0x1

    :try_start_10d
    invoke-static {v14, v15, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 794
    .end local v2    # "success":Z
    .local v0, "finalCrop":Landroid/graphics/Bitmap;
    .local v16, "success":Z
    new-instance v2, Ljava/io/FileOutputStream;
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_113} :catch_13f
    .catchall {:try_start_10d .. :try_end_113} :catchall_13b

    move-object/from16 v17, v3

    :try_start_115
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    .end local v3    # "cropHint":Landroid/graphics/Rect;
    .local v17, "cropHint":Landroid/graphics/Rect;
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v7, v2

    .line 795
    new-instance v2, Ljava/io/BufferedOutputStream;

    const v3, 0x8000

    invoke-direct {v2, v7, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v10, v2

    .line 796
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 797
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_12e} :catch_139
    .catchall {:try_start_115 .. :try_end_12e} :catchall_137

    .line 798
    const/4 v0, 0x1

    .line 805
    .end local v8    # "heightR":F
    .end local v9    # "scaler":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v12    # "actualScale":I
    .end local v13    # "scale":I
    .end local v14    # "cropped":Landroid/graphics/Bitmap;
    .end local v15    # "destWidth":I
    .end local v16    # "success":Z
    .local v0, "success":Z
    move v2, v0

    .end local v0    # "success":Z
    .restart local v2    # "success":Z
    :goto_130
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 806
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 807
    goto :goto_16a

    .line 805
    .end local v2    # "success":Z
    .restart local v16    # "success":Z
    :catchall_137
    move-exception v0

    goto :goto_148

    .line 800
    :catch_139
    move-exception v0

    goto :goto_154

    .line 805
    .end local v17    # "cropHint":Landroid/graphics/Rect;
    .restart local v3    # "cropHint":Landroid/graphics/Rect;
    :catchall_13b
    move-exception v0

    move-object/from16 v17, v3

    .end local v3    # "cropHint":Landroid/graphics/Rect;
    .restart local v17    # "cropHint":Landroid/graphics/Rect;
    goto :goto_148

    .line 800
    .end local v17    # "cropHint":Landroid/graphics/Rect;
    .restart local v3    # "cropHint":Landroid/graphics/Rect;
    :catch_13f
    move-exception v0

    move-object/from16 v17, v3

    .end local v3    # "cropHint":Landroid/graphics/Rect;
    .restart local v17    # "cropHint":Landroid/graphics/Rect;
    goto :goto_154

    .line 805
    .end local v16    # "success":Z
    .end local v17    # "cropHint":Landroid/graphics/Rect;
    .restart local v2    # "success":Z
    .restart local v3    # "cropHint":Landroid/graphics/Rect;
    :catchall_143
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "success":Z
    .end local v3    # "cropHint":Landroid/graphics/Rect;
    .restart local v16    # "success":Z
    .restart local v17    # "cropHint":Landroid/graphics/Rect;
    :goto_148
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 806
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 800
    .end local v16    # "success":Z
    .end local v17    # "cropHint":Landroid/graphics/Rect;
    .restart local v2    # "success":Z
    .restart local v3    # "cropHint":Landroid/graphics/Rect;
    :catch_14f
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v17, v3

    .line 805
    .end local v2    # "success":Z
    .end local v3    # "cropHint":Landroid/graphics/Rect;
    .restart local v16    # "success":Z
    .restart local v17    # "cropHint":Landroid/graphics/Rect;
    :goto_154
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 806
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 807
    nop

    .line 811
    move/from16 v2, v16

    goto :goto_16a

    .line 688
    .end local v5    # "needCrop":Z
    .end local v6    # "needScale":Z
    .end local v7    # "f":Ljava/io/FileOutputStream;
    .end local v10    # "bos":Ljava/io/BufferedOutputStream;
    .end local v16    # "success":Z
    .end local v17    # "cropHint":Landroid/graphics/Rect;
    .restart local v2    # "success":Z
    .restart local v3    # "cropHint":Landroid/graphics/Rect;
    :cond_15e
    move/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "success":Z
    .end local v3    # "cropHint":Landroid/graphics/Rect;
    .restart local v16    # "success":Z
    .restart local v17    # "cropHint":Landroid/graphics/Rect;
    :goto_162
    const-string v0, "WallpaperManagerService"

    const-string v2, "Invalid wallpaper data"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const/4 v2, 0x0

    .line 811
    .end local v16    # "success":Z
    .restart local v2    # "success":Z
    :goto_16a
    if-nez v2, :cond_178

    .line 812
    const-string v0, "WallpaperManagerService"

    const-string v3, "Unable to apply new wallpaper"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 816
    :cond_178
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_189

    .line 817
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 822
    :cond_189
    return-void
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .line 2666
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2667
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 2668
    return p3

    .line 2670
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getDefaultDisplaySize()Landroid/graphics/Point;
    .registers 4

    .line 1754
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1755
    .local v0, "p":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1756
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1757
    .local v2, "d":Landroid/view/Display;
    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1758
    return-object v0
.end method

.method private getMaximumSizeDimension()I
    .registers 4

    .line 2892
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2893
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 2894
    .local v1, "d":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v2

    return v2
.end method

.method private getThemeColorsLocked(Landroid/app/WallpaperColors;)Landroid/app/WallpaperColors;
    .registers 10
    .param p1, "colors"    # Landroid/app/WallpaperColors;

    .line 641
    if-nez p1, :cond_b

    .line 642
    const-string v0, "WallpaperManagerService"

    const-string v1, "Cannot get theme colors because WallpaperColors is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v0, 0x0

    return-object v0

    .line 646
    :cond_b
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v0

    .line 647
    .local v0, "colorHints":I
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    move v1, v2

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 648
    .local v1, "supportDarkTheme":Z
    :goto_17
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    if-eqz v3, :cond_4b

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    if-ne v3, v2, :cond_21

    if-eqz v1, :cond_4b

    :cond_21
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_29

    if-eqz v1, :cond_29

    goto :goto_4b

    .line 654
    :cond_29
    new-instance v3, Landroid/app/WallpaperColors;

    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getPrimaryColor()Landroid/graphics/Color;

    move-result-object v5

    .line 655
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getSecondaryColor()Landroid/graphics/Color;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getTertiaryColor()Landroid/graphics/Color;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;)V

    .line 657
    .local v3, "themeColors":Landroid/app/WallpaperColors;
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    if-ne v5, v2, :cond_41

    .line 658
    and-int/lit8 v0, v0, -0x3

    goto :goto_47

    .line 659
    :cond_41
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    if-ne v2, v4, :cond_47

    .line 660
    or-int/lit8 v0, v0, 0x2

    .line 662
    :cond_47
    :goto_47
    invoke-virtual {v3, v0}, Landroid/app/WallpaperColors;->setColorHints(I)V

    .line 663
    return-object v3

    .line 651
    .end local v3    # "themeColors":Landroid/app/WallpaperColors;
    :cond_4b
    :goto_4b
    return-object p1
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .registers 2
    .param p0, "userId"    # I

    .line 1379
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 8
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .line 2690
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_8

    :cond_6
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 2691
    .local v1, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2692
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v2, :cond_4f

    .line 2695
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 2696
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2700
    if-nez v2, :cond_4f

    .line 2701
    if-ne p2, v0, :cond_34

    .line 2702
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v3, "wallpaper_lock_orig"

    const-string/jumbo v4, "wallpaper_lock"

    invoke-direct {v0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 2704
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2705
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_4f

    .line 2709
    :cond_34
    const-string v0, "WallpaperManagerService"

    const-string v3, "Didn\'t find wallpaper in non-lock case!"

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v3, "wallpaper_orig"

    const-string/jumbo v4, "wallpaper"

    invoke-direct {v0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 2711
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2712
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2716
    :cond_4f
    :goto_4f
    return-object v2
.end method

.method public static synthetic lambda$switchUser$0(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 4
    .param p1, "systemWallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "lockWallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1577
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1578
    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1579
    return-void
.end method

.method private loadSettingsLocked(IZ)V
    .registers 20
    .param p1, "userId"    # I
    .param p2, "keepDimensionHints"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 2720
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v3

    .line 2721
    .local v3, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v4, 0x0

    .line 2722
    .local v4, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v5

    .line 2724
    .local v5, "file":Ljava/io/File;
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2725
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v6, 0x1

    if-nez v0, :cond_45

    .line 2727
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateFromOld()V

    .line 2729
    new-instance v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v8, "wallpaper_orig"

    const-string/jumbo v9, "wallpaper"

    invoke-direct {v7, v2, v8, v9}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    .line 2730
    iput-boolean v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 2731
    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2732
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v7

    if-nez v7, :cond_45

    .line 2733
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->sourceExists()Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 2734
    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_45

    .line 2736
    :cond_3e
    const-string v7, "WallpaperManagerService"

    const-string v8, "No static wallpaper imagery; defaults will be shown"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    :cond_45
    :goto_45
    move-object v7, v0

    .line 2740
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v7, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v8, 0x0

    move v9, v8

    .line 2742
    .local v9, "success":Z
    :try_start_48
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v0

    .line 2743
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 2744
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2748
    :cond_5b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 2749
    .local v10, "type":I
    const/4 v11, 0x2

    if-ne v10, v11, :cond_d5

    .line 2750
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 2751
    .local v11, "tag":Ljava/lang/String;
    const-string/jumbo v12, "wp"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_6d} :catch_188
    .catch Ljava/lang/NullPointerException; {:try_start_48 .. :try_end_6d} :catch_166
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_6d} :catch_144
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48 .. :try_end_6d} :catch_122
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_6d} :catch_100
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_48 .. :try_end_6d} :catch_dd

    if-eqz v12, :cond_ab

    .line 2753
    move/from16 v12, p2

    :try_start_71
    invoke-direct {v1, v0, v7, v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    .line 2756
    const-string v13, "component"

    const/4 v14, 0x0

    invoke-interface {v0, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2757
    .local v13, "comp":Ljava/lang/String;
    if-eqz v13, :cond_82

    .line 2758
    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v14

    nop

    .line 2759
    :cond_82
    iput-object v14, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 2760
    iget-object v14, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v14, :cond_96

    const-string v14, "android"

    iget-object v15, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 2762
    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 2761
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9a

    .line 2763
    :cond_96
    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iput-object v14, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 2775
    .end local v13    # "comp":Ljava/lang/String;
    :cond_9a
    goto :goto_d7

    .line 2798
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "type":I
    .end local v11    # "tag":Ljava/lang/String;
    :catch_9b
    move-exception v0

    goto :goto_e0

    .line 2796
    :catch_9d
    move-exception v0

    goto :goto_103

    .line 2794
    :catch_9f
    move-exception v0

    goto/16 :goto_125

    .line 2792
    :catch_a2
    move-exception v0

    goto/16 :goto_147

    .line 2790
    :catch_a5
    move-exception v0

    goto/16 :goto_169

    .line 2788
    :catch_a8
    move-exception v0

    goto/16 :goto_18b

    .line 2775
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "type":I
    .restart local v11    # "tag":Ljava/lang/String;
    :cond_ab
    move/from16 v12, p2

    const-string/jumbo v13, "kwp"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d7

    .line 2777
    iget-object v13, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2778
    .local v13, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v13, :cond_d1

    .line 2779
    new-instance v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v15, "wallpaper_lock_orig"

    const-string/jumbo v6, "wallpaper_lock"

    invoke-direct {v14, v2, v15, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v13, v14

    .line 2781
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v2, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2783
    :cond_d1
    invoke-direct {v1, v0, v13, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    :try_end_d4
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_d4} :catch_a8
    .catch Ljava/lang/NullPointerException; {:try_start_71 .. :try_end_d4} :catch_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_d4} :catch_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_71 .. :try_end_d4} :catch_9f
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_d4} :catch_9d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_71 .. :try_end_d4} :catch_9b

    .line 2783
    .end local v11    # "tag":Ljava/lang/String;
    .end local v13    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto :goto_d7

    .line 2786
    :cond_d5
    move/from16 v12, p2

    :cond_d7
    :goto_d7
    const/4 v6, 0x1

    if-ne v10, v6, :cond_5b

    .line 2787
    const/4 v9, 0x1

    .line 2787
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "type":I
    goto/16 :goto_193

    .line 2798
    :catch_dd
    move-exception v0

    move/from16 v12, p2

    .line 2799
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_e0
    const-string v6, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_194

    .line 2796
    :catch_100
    move-exception v0

    move/from16 v12, p2

    .line 2797
    .local v0, "e":Ljava/io/IOException;
    :goto_103
    const-string v6, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_193

    .line 2794
    :catch_122
    move-exception v0

    move/from16 v12, p2

    .line 2795
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_125
    const-string v6, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_193

    .line 2792
    :catch_144
    move-exception v0

    move/from16 v12, p2

    .line 2793
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_147
    const-string v6, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_193

    .line 2790
    :catch_166
    move-exception v0

    move/from16 v12, p2

    .line 2791
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_169
    const-string v6, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_193

    .line 2788
    :catch_188
    move-exception v0

    move/from16 v12, p2

    .line 2789
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_18b
    const-string v6, "WallpaperManagerService"

    const-string/jumbo v10, "no current wallpaper -- first boot?"

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_193
    nop

    .line 2801
    :goto_194
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2803
    if-nez v9, :cond_1b2

    .line 2804
    const/4 v0, -0x1

    iput v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 2805
    iput v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 2806
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2807
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2808
    const-string v0, ""

    iput-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2810
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1bc

    .line 2812
    :cond_1b2
    iget v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-gtz v0, :cond_1bc

    .line 2813
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v0

    iput v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2821
    :cond_1bc
    :goto_1bc
    invoke-direct {v1, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2822
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2823
    .local v0, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_1cc

    .line 2824
    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2826
    :cond_1cc
    return-void
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 7
    .param p0, "userId"    # I

    .line 2539
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper_info.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2540
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private migrateFromOld()V
    .registers 8

    .line 2634
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2636
    .local v0, "preNWallpaper":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2637
    .local v2, "originalWallpaper":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_orig"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2640
    .local v3, "newWallpaper":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 2641
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_59

    .line 2647
    invoke-static {v0, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_59

    .line 2649
    :cond_30
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 2654
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/wallpaper_info.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2655
    .local v4, "oldInfo":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 2656
    new-instance v5, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v6, "wallpaper_info.xml"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v5

    .line 2657
    .local v1, "newInfo":Ljava/io/File;
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2660
    .end local v1    # "newInfo":Ljava/io/File;
    :cond_53
    invoke-static {v2, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 2661
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2663
    .end local v4    # "oldInfo":Ljava/io/File;
    :cond_59
    :goto_59
    return-void
.end method

.method private migrateSystemToLockWallpaperLocked(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 2145
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2146
    .local v0, "sysWP":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_b

    .line 2150
    return-void

    .line 2154
    :cond_b
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v2, "wallpaper_lock_orig"

    const-string/jumbo v3, "wallpaper_lock"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2156
    .local v1, "lockWP":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2157
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2158
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 2159
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 2160
    iget-boolean v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    iput-boolean v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 2161
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iput-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2165
    :try_start_31
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Landroid/system/ErrnoException; {:try_start_31 .. :try_end_4f} :catch_56

    .line 2172
    nop

    .line 2174
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2175
    return-void

    .line 2167
    :catch_56
    move-exception v2

    .line 2168
    .local v2, "e":Landroid/system/ErrnoException;
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t migrate system wallpaper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2170
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2171
    return-void
.end method

.method private needUpdateLocked(Landroid/app/WallpaperColors;I)Z
    .registers 9
    .param p1, "colors"    # Landroid/app/WallpaperColors;
    .param p2, "themeMode"    # I

    .line 378
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 379
    return v0

    .line 382
    :cond_4
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    if-ne p2, v1, :cond_9

    .line 383
    return v0

    .line 386
    :cond_9
    const/4 v1, 0x1

    .line 387
    .local v1, "result":Z
    nop

    .line 388
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    move v2, v3

    goto :goto_17

    :cond_16
    move v2, v0

    .line 389
    .local v2, "supportDarkTheme":Z
    :goto_17
    packed-switch p2, :pswitch_data_52

    .line 408
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unkonwn theme mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return v0

    .line 403
    :pswitch_32
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    if-nez v4, :cond_4e

    .line 404
    if-nez v2, :cond_3a

    move v0, v3

    nop

    :cond_3a
    move v1, v0

    goto :goto_4e

    .line 398
    :pswitch_3c
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    if-nez v0, :cond_4e

    .line 399
    move v1, v2

    goto :goto_4e

    .line 391
    :pswitch_42
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    if-ne v4, v3, :cond_48

    .line 392
    move v1, v2

    goto :goto_4e

    .line 394
    :cond_48
    if-nez v2, :cond_4c

    move v0, v3

    nop

    :cond_4c
    move v1, v0

    .line 396
    nop

    .line 411
    :cond_4e
    :goto_4e
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    .line 412
    return v1

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_42
        :pswitch_3c
        :pswitch_32
    .end packed-switch
.end method

.method private notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 7
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2477
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$700(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2478
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1d

    .line 2480
    :try_start_b
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$700(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v2}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 2485
    goto :goto_1a

    .line 2481
    :catch_19
    move-exception v2

    .line 2478
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2487
    .end local v1    # "i":I
    :cond_1d
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$700(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2489
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2490
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2491
    return-void
.end method

.method private notifyColorListeners(Landroid/app/WallpaperColors;II)V
    .registers 13
    .param p1, "wallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v0, "colorListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IWallpaperManagerCallback;>;"
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 493
    :try_start_8
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 494
    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 495
    .local v2, "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    const/4 v4, -0x1

    .line 496
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    .line 497
    .local v3, "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 499
    .local v4, "keyguardListener":Landroid/app/IWallpaperManagerCallback;
    const/4 v5, 0x0

    if-eqz v2, :cond_34

    .line 500
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .line 501
    .local v6, "count":I
    move v7, v5

    .local v7, "i":I
    :goto_23
    if-ge v7, v6, :cond_31

    .line 502
    invoke-virtual {v2, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 504
    .end local v7    # "i":I
    :cond_31
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 507
    .end local v6    # "count":I
    :cond_34
    if-eqz v3, :cond_4c

    .line 508
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .line 509
    .restart local v6    # "count":I
    move v7, v5

    .restart local v7    # "i":I
    :goto_3b
    if-ge v7, v6, :cond_49

    .line 510
    invoke-virtual {v3, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b

    .line 512
    .end local v7    # "i":I
    :cond_49
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 514
    .end local v6    # "count":I
    :cond_4c
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getThemeColorsLocked(Landroid/app/WallpaperColors;)Landroid/app/WallpaperColors;

    move-result-object v6

    move-object p1, v6

    .line 515
    .end local v2    # "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .end local v3    # "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_8 .. :try_end_52} :catchall_71

    move-object v1, v4

    .line 517
    .end local v4    # "keyguardListener":Landroid/app/IWallpaperManagerCallback;
    .local v1, "keyguardListener":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 518
    .local v2, "count":I
    nop

    .local v5, "i":I
    :goto_58
    move v3, v5

    .end local v5    # "i":I
    .local v3, "i":I
    if-ge v3, v2, :cond_69

    .line 520
    :try_start_5b
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v4, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_64} :catch_65

    .line 524
    goto :goto_66

    .line 521
    :catch_65
    move-exception v4

    .line 518
    :goto_66
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .restart local v5    # "i":I
    goto :goto_58

    .line 527
    .end local v5    # "i":I
    :cond_69
    if-eqz v1, :cond_70

    .line 529
    :try_start_6b
    invoke-interface {v1, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_6e} :catch_6f

    .line 532
    goto :goto_70

    .line 530
    :catch_6f
    move-exception v3

    .line 534
    :cond_70
    :goto_70
    return-void

    .line 515
    .end local v1    # "keyguardListener":Landroid/app/IWallpaperManagerCallback;
    .end local v2    # "count":I
    :catchall_71
    move-exception v2

    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v2
.end method

.method private notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .registers 7
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "which"    # I

    .line 450
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 452
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 453
    .local v1, "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    const/4 v3, -0x1

    .line 454
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 456
    .local v2, "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 457
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 458
    monitor-exit v0

    return-void

    .line 465
    :cond_24
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez v3, :cond_2a

    const/4 v3, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    .end local v1    # "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .end local v2    # "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    :goto_2b
    move v1, v3

    .line 466
    .local v1, "needsExtraction":Z
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_4f

    .line 470
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v0, p2, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyColorListeners(Landroid/app/WallpaperColors;II)V

    .line 472
    if-eqz v1, :cond_4e

    .line 473
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 474
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_3c
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez v2, :cond_42

    .line 477
    monitor-exit v0

    return-void

    .line 479
    :cond_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_4b

    .line 480
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v0, p2, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyColorListeners(Landroid/app/WallpaperColors;II)V

    goto :goto_4e

    .line 479
    :catchall_4b
    move-exception v2

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v2

    .line 482
    :cond_4e
    :goto_4e
    return-void

    .line 466
    .end local v1    # "needsExtraction":Z
    :catchall_4f
    move-exception v1

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method private parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    .registers 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "keepDimensionHints"    # Z

    .line 2846
    const-string v0, "id"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2847
    .local v0, "idString":Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 2848
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2849
    .local v2, "id":I
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-le v2, v3, :cond_15

    .line 2850
    iput v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    .line 2852
    .end local v2    # "id":I
    :cond_15
    goto :goto_1c

    .line 2853
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2856
    :goto_1c
    if-nez p3, :cond_37

    .line 2857
    const-string/jumbo v2, "width"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 2858
    const-string v2, "height"

    .line 2859
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2858
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 2861
    :cond_37
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropLeft"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2862
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropTop"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2863
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropRight"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2864
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropBottom"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2865
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingLeft"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2866
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingTop"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2867
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingRight"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2868
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingBottom"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2869
    const-string v2, "colorsCount"

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 2870
    .local v2, "colorsCount":I
    if-lez v2, :cond_d3

    .line 2871
    const/4 v3, 0x0

    .line 2871
    .local v3, "primary":Landroid/graphics/Color;
    const/4 v5, 0x0

    .line 2871
    .local v5, "secondary":Landroid/graphics/Color;
    const/4 v6, 0x0

    .line 2872
    .local v6, "tertiary":Landroid/graphics/Color;
    move-object v7, v6

    move-object v6, v5

    move-object v5, v3

    move v3, v4

    .line 2872
    .local v3, "i":I
    .local v5, "primary":Landroid/graphics/Color;
    .local v6, "secondary":Landroid/graphics/Color;
    .local v7, "tertiary":Landroid/graphics/Color;
    :goto_9b
    if-ge v3, v2, :cond_c6

    .line 2873
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "colorValue"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v8

    .line 2874
    .local v8, "color":Landroid/graphics/Color;
    if-nez v3, :cond_ba

    .line 2875
    move-object v5, v8

    goto :goto_c3

    .line 2876
    :cond_ba
    const/4 v9, 0x1

    if-ne v3, v9, :cond_bf

    .line 2877
    move-object v6, v8

    goto :goto_c3

    .line 2878
    :cond_bf
    const/4 v9, 0x2

    if-ne v3, v9, :cond_c6

    .line 2879
    move-object v7, v8

    .line 2872
    .end local v8    # "color":Landroid/graphics/Color;
    :goto_c3
    add-int/lit8 v3, v3, 0x1

    goto :goto_9b

    .line 2884
    .end local v3    # "i":I
    :cond_c6
    const-string v3, "colorHints"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 2885
    .local v3, "colorHints":I
    new-instance v4, Landroid/app/WallpaperColors;

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    iput-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2887
    .end local v3    # "colorHints":I
    .end local v5    # "primary":Landroid/graphics/Color;
    .end local v6    # "secondary":Landroid/graphics/Color;
    .end local v7    # "tertiary":Landroid/graphics/Color;
    :cond_d3
    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2888
    const-string/jumbo v3, "true"

    const-string v4, "backup"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 2889
    return-void
.end method

.method private saveSettingsLocked(I)V
    .registers 10
    .param p1, "userId"    # I

    .line 2544
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    .line 2545
    .local v0, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v1, 0x0

    .line 2546
    .local v1, "fstream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    move-object v3, v2

    .line 2548
    .local v3, "stream":Ljava/io/BufferedOutputStream;
    :try_start_7
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2549
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v1, v5

    .line 2550
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v5

    .line 2551
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2552
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2556
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2557
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v2, :cond_3e

    .line 2558
    const-string/jumbo v5, "wp"

    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2560
    :cond_3e
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v2, v5

    .line 2561
    if-eqz v2, :cond_4f

    .line 2562
    const-string/jumbo v5, "kwp"

    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2565
    :cond_4f
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2567
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2568
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2569
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 2570
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_5e} :catch_5f

    .line 2574
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_66

    .line 2571
    :catch_5f
    move-exception v2

    .line 2572
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2573
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 2575
    .end local v2    # "e":Ljava/io/IOException;
    :goto_66
    return-void
.end method

.method private setWallpaperComponent(Landroid/content/ComponentName;I)V
    .registers 16
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 2228
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingUid()I

    move-result v1

    const-string v5, "changing live wallpaper"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2230
    const-string v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2232
    const/4 v0, 0x1

    .line 2233
    .local v0, "which":I
    const/4 v1, 0x0

    .line 2236
    .local v1, "shouldNotifyColors":Z
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2238
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2239
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v3, :cond_7d

    .line 2242
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v10, v4

    .line 2248
    .local v10, "ident":J
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2249
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_40

    .line 2252
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(I)V

    .line 2257
    :cond_40
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4
    :try_end_46
    .catchall {:try_start_1c .. :try_end_46} :catchall_94

    if-nez v4, :cond_4a

    .line 2258
    or-int/lit8 v0, v0, 0x2

    .line 2262
    :cond_4a
    const/4 v4, 0x0

    :try_start_4b
    iput-boolean v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 2263
    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v4

    move v12, v4

    .line 2264
    .local v12, "same":Z
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 2265
    if-nez v12, :cond_63

    .line 2266
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2268
    :cond_63
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2269
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_6c
    .catchall {:try_start_4b .. :try_end_6c} :catchall_78

    .line 2270
    const/4 v1, 0x1

    .line 2273
    .end local v12    # "same":Z
    :cond_6d
    :try_start_6d
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2274
    nop

    .line 2275
    .end local v10    # "ident":J
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_94

    .line 2277
    if-eqz v1, :cond_77

    .line 2278
    invoke-direct {p0, v3, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2280
    :cond_77
    return-void

    .line 2273
    .restart local v10    # "ident":J
    :catchall_78
    move-exception v4

    :try_start_79
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2240
    .end local v10    # "ident":J
    :cond_7d
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper not yet initialized for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2275
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_94
    move-exception v3

    monitor-exit v2
    :try_end_96
    .catchall {:try_start_79 .. :try_end_96} :catchall_94

    throw v3
.end method

.method private writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 10
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2582
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2583
    const-string v1, "id"

    iget v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2584
    const-string/jumbo v1, "width"

    iget v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2585
    const-string v1, "height"

    iget v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2587
    const-string v1, "cropLeft"

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2588
    const-string v1, "cropTop"

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2589
    const-string v1, "cropRight"

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2590
    const-string v1, "cropBottom"

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2592
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eqz v1, :cond_6e

    .line 2593
    const-string/jumbo v1, "paddingLeft"

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2595
    :cond_6e
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-eqz v1, :cond_82

    .line 2596
    const-string/jumbo v1, "paddingTop"

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2598
    :cond_82
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-eqz v1, :cond_96

    .line 2599
    const-string/jumbo v1, "paddingRight"

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2601
    :cond_96
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_aa

    .line 2602
    const-string/jumbo v1, "paddingBottom"

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2605
    :cond_aa
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v1, :cond_100

    .line 2606
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2607
    .local v1, "colorsCount":I
    const-string v2, "colorsCount"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2608
    if-lez v1, :cond_f1

    .line 2609
    const/4 v2, 0x0

    .line 2609
    .local v2, "i":I
    :goto_c4
    if-ge v2, v1, :cond_f1

    .line 2610
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v3}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Color;

    .line 2611
    .local v3, "wc":Landroid/graphics/Color;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "colorValue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Color;->toArgb()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2609
    .end local v3    # "wc":Landroid/graphics/Color;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c4

    .line 2614
    .end local v2    # "i":I
    :cond_f1
    const-string v2, "colorHints"

    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2615
    invoke-virtual {v3}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 2614
    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2618
    .end local v1    # "colorsCount":I
    :cond_100
    const-string/jumbo v1, "name"

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2619
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_121

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 2620
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_121

    .line 2621
    const-string v1, "component"

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2622
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 2621
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2625
    :cond_121
    iget-boolean v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    if-eqz v1, :cond_12d

    .line 2626
    const-string v1, "backup"

    const-string/jumbo v2, "true"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2629
    :cond_12d
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2630
    return-void
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 11
    .param p1, "conn"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2465
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v3, 0x7dd

    const/4 v4, 0x0

    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iget v6, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    iget-object v7, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 2473
    goto :goto_27

    .line 2468
    :catch_12
    move-exception v0

    .line 2469
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperManagerService"

    const-string v2, "Failed attaching wallpaper; clearing"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2470
    iget-boolean v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v1, :cond_27

    .line 2471
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 2474
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_27
    :goto_27
    return-void
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .registers 28
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "force"    # Z
    .param p3, "fromUser"    # Z
    .param p4, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p5, "reply"    # Landroid/os/IRemoteCallback;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    .line 2302
    const-string v0, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindWallpaperComponentLocked: componentName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    const/4 v4, 0x1

    if-nez p2, :cond_26

    invoke-direct {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2306
    return v4

    .line 2310
    :cond_26
    const/4 v6, 0x0

    if-nez v2, :cond_3e

    .line 2311
    :try_start_29
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    move-object v2, v0

    .line 2312
    .end local p1    # "componentName":Landroid/content/ComponentName;
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_3e

    .line 2314
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object v2, v0

    .line 2317
    const-string v0, "WallpaperManagerService"

    const-string v7, "No default component; using image wallpaper"

    invoke-static {v0, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 2419
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .restart local p1    # "componentName":Landroid/content/ComponentName;
    :catch_39
    move-exception v0

    move-object/from16 v11, p5

    goto/16 :goto_1d0

    .line 2320
    .end local p1    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    :cond_3e
    :goto_3e
    iget v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move v7, v0

    .line 2321
    .local v7, "serviceUserId":I
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v8, 0x1080

    invoke-interface {v0, v2, v8, v7}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    move-object v8, v0

    .line 2323
    .local v8, "si":Landroid/content/pm/ServiceInfo;
    if-nez v8, :cond_68

    .line 2325
    const-string v0, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempted wallpaper "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is unavailable"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    return v6

    .line 2328
    :cond_68
    const-string v0, "android.permission.BIND_WALLPAPER"

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    .line 2329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2332
    .local v0, "msg":Ljava/lang/String;
    if-nez p3, :cond_8b

    .line 2335
    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    return v6

    .line 2333
    :cond_8b
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2339
    .end local v0    # "msg":Ljava/lang/String;
    :cond_91
    const/4 v9, 0x0

    .line 2341
    .local v9, "wi":Landroid/app/WallpaperInfo;
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.service.wallpaper.WallpaperService"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 2342
    .local v10, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_134

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_134

    .line 2344
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 2346
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x80

    .line 2345
    invoke-interface {v0, v10, v11, v12, v7}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2347
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    move-object v11, v0

    .line 2348
    .local v11, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move v0, v6

    .local v0, "i":I
    :goto_bc
    move v12, v0

    .end local v0    # "i":I
    .local v12, "i":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_113

    .line 2349
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object v13, v0

    .line 2350
    .local v13, "rsi":Landroid/content/pm/ServiceInfo;
    iget-object v0, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v14, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    iget-object v0, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v14, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 2351
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_de
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_de} :catch_39

    if-eqz v0, :cond_10f

    .line 2353
    :try_start_e0
    new-instance v0, Landroid/app/WallpaperInfo;

    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v4, v15

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0, v14, v4}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_ee
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e0 .. :try_end_ee} :catch_100
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_ee} :catch_f1
    .catch Landroid/os/RemoteException; {:try_start_e0 .. :try_end_ee} :catch_39

    .line 2366
    .end local v9    # "wi":Landroid/app/WallpaperInfo;
    .local v0, "wi":Landroid/app/WallpaperInfo;
    nop

    .line 2370
    move-object v9, v0

    goto :goto_113

    .line 2360
    .end local v0    # "wi":Landroid/app/WallpaperInfo;
    .restart local v9    # "wi":Landroid/app/WallpaperInfo;
    :catch_f1
    move-exception v0

    .line 2361
    .local v0, "e":Ljava/io/IOException;
    if-nez p3, :cond_fa

    .line 2364
    :try_start_f4
    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2365
    return v6

    .line 2362
    :cond_fa
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 2354
    .end local v0    # "e":Ljava/io/IOException;
    :catch_100
    move-exception v0

    .line 2355
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez p3, :cond_109

    .line 2358
    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2359
    return v6

    .line 2356
    :cond_109
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 2348
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v13    # "rsi":Landroid/content/pm/ServiceInfo;
    :cond_10f
    add-int/lit8 v0, v12, 0x1

    .end local v12    # "i":I
    .local v0, "i":I
    const/4 v4, 0x1

    goto :goto_bc

    .line 2370
    .end local v0    # "i":I
    :cond_113
    :goto_113
    if-nez v9, :cond_134

    .line 2371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected service is not a wallpaper: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2373
    .local v0, "msg":Ljava/lang/String;
    if-nez p3, :cond_12e

    .line 2376
    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    return v6

    .line 2374
    :cond_12e
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2383
    .end local v0    # "msg":Ljava/lang/String;
    .end local v11    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_134
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-direct {v0, v1, v9, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    move-object v4, v0

    .line 2384
    .local v4, "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    invoke-virtual {v10, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2385
    const-string v0, "android.intent.extra.client_label"

    const v11, 0x104070f

    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2387
    const-string v0, "android.intent.extra.client_intent"

    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v14, 0x104011a

    .line 2390
    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 2389
    invoke-static {v12, v13}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 2387
    move-object/from16 v16, v11

    move-object/from16 v21, v12

    invoke-static/range {v16 .. v21}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2392
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v11, 0x22000001

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v10, v4, v11, v12}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1a2

    .line 2396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to bind service: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2398
    .restart local v0    # "msg":Ljava/lang/String;
    if-nez p3, :cond_19c

    .line 2401
    const-string v11, "WallpaperManagerService"

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    return v6

    .line 2399
    :cond_19c
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2404
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1a2
    iget v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v11, :cond_1b1

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_1b1

    .line 2405
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2407
    :cond_1b1
    iput-object v2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2408
    iput-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :try_end_1b5
    .catch Landroid/os/RemoteException; {:try_start_f4 .. :try_end_1b5} :catch_39

    .line 2409
    move-object/from16 v11, p5

    :try_start_1b7
    iput-object v11, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;
    :try_end_1b9
    .catch Landroid/os/RemoteException; {:try_start_1b7 .. :try_end_1b9} :catch_1cf

    .line 2411
    :try_start_1b9
    iget v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v12, :cond_1ca

    .line 2414
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v12, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v13, 0x7dd

    invoke-interface {v0, v12, v13, v6}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V

    .line 2415
    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_1ca
    .catch Landroid/os/RemoteException; {:try_start_1b9 .. :try_end_1ca} :catch_1cb

    .line 2418
    :cond_1ca
    goto :goto_1cc

    .line 2417
    :catch_1cb
    move-exception v0

    .line 2426
    .end local v4    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v7    # "serviceUserId":I
    .end local v8    # "si":Landroid/content/pm/ServiceInfo;
    .end local v9    # "wi":Landroid/app/WallpaperInfo;
    .end local v10    # "intent":Landroid/content/Intent;
    :goto_1cc
    nop

    .line 2427
    const/4 v4, 0x1

    return v4

    .line 2419
    :catch_1cf
    move-exception v0

    .line 2420
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1d0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2421
    .local v4, "msg":Ljava/lang/String;
    if-nez p3, :cond_1f1

    .line 2424
    const-string v7, "WallpaperManagerService"

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    return v6

    .line 2422
    :cond_1f1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public clearWallpaper(Ljava/lang/String;II)V
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 1619
    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1620
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_51

    .line 1623
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1624
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "clearWallpaper"

    const/4 v7, 0x0

    .line 1623
    move v3, p3

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1626
    .end local p3    # "userId":I
    .local v0, "userId":I
    const/4 p3, 0x0

    .line 1627
    .local p3, "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1628
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2a
    invoke-virtual {p0, v2, p2, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 1630
    const/4 v2, 0x2

    if-ne p2, v2, :cond_39

    .line 1631
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object p3, v2

    .line 1633
    :cond_39
    const/4 v2, 0x1

    if-eq p2, v2, :cond_3e

    if-nez p3, :cond_47

    .line 1634
    :cond_3e
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object p3, v2

    .line 1636
    :cond_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_2a .. :try_end_48} :catchall_4e

    .line 1639
    if-eqz p3, :cond_4d

    .line 1640
    invoke-direct {p0, p3, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1642
    :cond_4d
    return-void

    .line 1636
    :catchall_4e
    move-exception v2

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v2

    .line 1621
    .end local v0    # "userId":I
    .local p3, "userId":I
    :cond_51
    :goto_51
    return-void
.end method

.method clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 3
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2459
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2460
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2461
    return-void
.end method

.method clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V
    .registers 22
    .param p1, "defaultFailed"    # Z
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .param p4, "reply"    # Landroid/os/IRemoteCallback;

    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    .line 1645
    move-object/from16 v10, p4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq v8, v1, :cond_17

    if-ne v8, v0, :cond_f

    goto :goto_17

    .line 1646
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper to clear"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1649
    :cond_17
    :goto_17
    const/4 v1, 0x0

    .line 1650
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v2, 0x0

    if-ne v8, v0, :cond_29

    .line 1651
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1652
    if-nez v1, :cond_27

    .line 1657
    return-void

    .line 1667
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v11, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_27
    :goto_27
    move-object v11, v1

    goto :goto_41

    .line 1660
    .end local v11    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_29
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1661
    if-nez v1, :cond_27

    .line 1663
    invoke-direct {v7, v9, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1664
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_27

    .line 1667
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v11    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_41
    if-nez v11, :cond_44

    .line 1668
    return-void

    .line 1671
    :cond_44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v12, v3

    .line 1673
    .local v12, "ident":J
    :try_start_49
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 1674
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1675
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1676
    if-ne v8, v0, :cond_73

    .line 1677
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 1678
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;
    :try_end_64
    .catchall {:try_start_49 .. :try_end_64} :catchall_b0

    move-object v1, v0

    .line 1679
    .local v1, "cb":Landroid/app/IWallpaperManagerCallback;
    if-eqz v1, :cond_6c

    .line 1684
    :try_start_67
    invoke-interface {v1}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6a} :catch_6b
    .catchall {:try_start_67 .. :try_end_6a} :catchall_b0

    .line 1687
    goto :goto_6c

    .line 1685
    :catch_6b
    move-exception v0

    .line 1689
    :cond_6c
    :goto_6c
    :try_start_6c
    invoke-direct {v7, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_b0

    .line 1721
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1690
    return-void

    .line 1694
    .end local v1    # "cb":Landroid/app/IWallpaperManagerCallback;
    :cond_73
    const/4 v14, 0x0

    move-object v15, v14

    .line 1696
    .local v15, "e":Ljava/lang/RuntimeException;
    :try_start_75
    iput-object v14, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 1697
    iput-boolean v2, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1698
    iget v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_7b} :catch_98
    .catchall {:try_start_75 .. :try_end_7b} :catchall_b0

    if-eq v9, v0, :cond_81

    .line 1721
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1698
    return-void

    .line 1699
    :cond_81
    if-eqz p1, :cond_87

    .line 1700
    :try_start_83
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 1701
    move-object v2, v0

    goto :goto_88

    :cond_87
    move-object v2, v14

    :goto_88
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1699
    move-object v1, v7

    move-object v5, v11

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0
    :try_end_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_83 .. :try_end_91} :catch_98
    .catchall {:try_start_83 .. :try_end_91} :catchall_b0

    if-eqz v0, :cond_97

    .line 1721
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1702
    return-void

    .line 1706
    :cond_97
    goto :goto_9a

    .line 1704
    :catch_98
    move-exception v0

    .line 1705
    .local v0, "e1":Ljava/lang/IllegalArgumentException;
    move-object v15, v0

    .line 1712
    .end local v0    # "e1":Ljava/lang/IllegalArgumentException;
    :goto_9a
    :try_start_9a
    const-string v0, "WallpaperManagerService"

    const-string v1, "Default wallpaper component not found!"

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1713
    invoke-virtual {v7, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_b0

    .line 1714
    if-eqz v10, :cond_ab

    .line 1716
    :try_start_a6
    invoke-interface {v10, v14}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_a9} :catch_aa
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_b0

    .line 1718
    goto :goto_ab

    .line 1717
    :catch_aa
    move-exception v0

    .line 1721
    .end local v15    # "e":Ljava/lang/RuntimeException;
    :cond_ab
    :goto_ab
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1722
    nop

    .line 1723
    return-void

    .line 1721
    :catchall_b0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 6
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2431
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_44

    .line 2432
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 2434
    :try_start_b
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13

    .line 2436
    goto :goto_14

    .line 2435
    :catch_13
    move-exception v0

    .line 2437
    :goto_14
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 2439
    :cond_18
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_27

    .line 2441
    :try_start_1e
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_26

    .line 2443
    goto :goto_27

    .line 2442
    :catch_26
    move-exception v0

    .line 2445
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2449
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_38} :catch_39

    .line 2451
    goto :goto_3a

    .line 2450
    :catch_39
    move-exception v0

    .line 2452
    :goto_3a
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 2453
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 2454
    iput-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2456
    :cond_44
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3033
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "WallpaperManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3035
    :cond_b
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3036
    :try_start_e
    const-string v1, "System wallpaper state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3037
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_15
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_d5

    .line 3038
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3039
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string v4, " User "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 3040
    const-string v4, ": id="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 3041
    const-string v4, "  mWidth="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3042
    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 3043
    const-string v4, " mHeight="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3044
    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 3045
    const-string v4, "  mCropHint="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3046
    const-string v4, "  mPadding="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3047
    const-string v4, "  mName="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3048
    const-string v4, "  mAllowBackup="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 3049
    const-string v4, "  mWallpaperComponent="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3050
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_d1

    .line 3051
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3052
    .local v4, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string v5, "  Wallpaper connection "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3053
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3054
    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3055
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v5, :cond_a4

    .line 3056
    const-string v5, "    mInfo.component="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3057
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v5}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3059
    :cond_a4
    const-string v5, "    mToken="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3060
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3061
    const-string v5, "    mService="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3062
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3063
    const-string v5, "    mEngine="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3064
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3065
    const-string v5, "    mLastDiedTime="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3066
    iget-wide v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {p2, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    .line 3037
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_d1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_15

    .line 3069
    .end local v2    # "i":I
    :cond_d5
    const-string v2, "Lock wallpaper state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3070
    nop

    .local v1, "i":I
    :goto_db
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_13e

    .line 3071
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3072
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string v3, " User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3073
    const-string v3, ": id="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3074
    const-string v3, "  mWidth="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3075
    const-string v3, " mHeight="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3076
    const-string v3, "  mCropHint="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3077
    const-string v3, "  mPadding="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3078
    const-string v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3079
    const-string v3, "  mAllowBackup="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3070
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_db

    .line 3082
    .end local v1    # "i":I
    :cond_13e
    monitor-exit v0

    .line 3083
    return-void

    .line 3082
    :catchall_140
    move-exception v1

    monitor-exit v0
    :try_end_142
    .catchall {:try_start_e .. :try_end_142} :catchall_140

    throw v1
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1384
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 1386
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1387
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 1385
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1389
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method public getHeightHint()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1814
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1815
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1816
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_15

    .line 1817
    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    monitor-exit v0

    return v2

    .line 1819
    :cond_15
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1821
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 1463
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1b

    .line 1466
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1467
    :try_start_b
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1468
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v1

    .line 1464
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getName() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPartialWallpaperColors(IILandroid/graphics/Rect;)Landroid/app/WallpaperColors;
    .registers 13
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "rectOnScreen"    # Landroid/graphics/Rect;

    .line 2054
    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    goto :goto_10

    .line 2055
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2058
    :cond_10
    :goto_10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "getWallpaperColors"

    const/4 v8, 0x0

    move v4, p2

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2061
    const/4 v1, 0x0

    .line 2063
    .local v1, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2064
    if-ne p1, v0, :cond_34

    .line 2065
    :try_start_28
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v1, v0

    goto :goto_34

    .line 2077
    :catchall_32
    move-exception v0

    goto :goto_4a

    .line 2070
    :cond_34
    :goto_34
    if-nez v1, :cond_3f

    .line 2071
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2074
    .end local v1    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v0, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object v1, v0

    .line 2074
    .end local v0    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v1    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_3f
    if-nez v1, :cond_44

    .line 2075
    const/4 v0, 0x0

    monitor-exit v2

    return-object v0

    .line 2077
    :cond_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_28 .. :try_end_45} :catchall_32

    .line 2079
    invoke-direct {p0, v1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/graphics/Rect;)Landroid/app/WallpaperColors;

    move-result-object v0

    return-object v0

    .line 2077
    :goto_4a
    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_32

    throw v0
.end method

.method public getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .registers 22
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p3, "which"    # I
    .param p4, "outParams"    # Landroid/os/Bundle;
    .param p5, "wallpaperUserId"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 1875
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_WALLPAPER_INTERNAL"

    invoke-virtual {v0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    .line 1877
    .local v5, "hasPrivilege":I
    if-eqz v5, :cond_21

    .line 1878
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1879
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string/jumbo v7, "read wallpaper"

    .line 1878
    move-object/from16 v8, p1

    invoke-direct {v1, v0, v8, v6, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->enforceCallingOrSelfPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_23

    .line 1882
    :cond_21
    move-object/from16 v8, p1

    :goto_23
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 1883
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v14, "getWallpaper"

    const/4 v15, 0x0

    .line 1882
    move/from16 v11, p5

    invoke-static/range {v9 .. v15}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1885
    .end local p5    # "wallpaperUserId":I
    .local v6, "wallpaperUserId":I
    const/4 v0, 0x1

    const/4 v7, 0x2

    if-eq v3, v0, :cond_45

    if-ne v3, v7, :cond_3d

    goto :goto_45

    .line 1886
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "Must specify exactly one kind of wallpaper to read"

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1889
    :cond_45
    :goto_45
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1891
    if-ne v3, v7, :cond_4f

    :try_start_4a
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_51

    .line 1916
    :catchall_4d
    move-exception v0

    goto :goto_99

    .line 1891
    :cond_4f
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    :goto_51
    move-object v7, v0

    .line 1892
    .local v7, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v10, v0

    .line 1893
    .local v10, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v11, 0x0

    if-nez v10, :cond_5e

    .line 1897
    monitor-exit v9
    :try_end_5d
    .catchall {:try_start_4a .. :try_end_5d} :catchall_4d

    return-object v11

    .line 1900
    :cond_5e
    if-eqz v4, :cond_72

    .line 1901
    :try_start_60
    const-string/jumbo v0, "width"

    iget v12, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {v4, v0, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1902
    const-string v0, "height"

    iget v12, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {v4, v0, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_72

    .line 1911
    :catch_70
    move-exception v0

    goto :goto_8f

    .line 1904
    :cond_72
    :goto_72
    if-eqz v2, :cond_7b

    .line 1905
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$700(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1907
    :cond_7b
    iget-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_81
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_81} :catch_70
    .catchall {:try_start_60 .. :try_end_81} :catchall_4d

    if-nez v0, :cond_85

    .line 1908
    :try_start_83
    monitor-exit v9
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_4d

    return-object v11

    .line 1910
    :cond_85
    :try_start_85
    iget-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    const/high16 v12, 0x10000000

    invoke-static {v0, v12}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_8d
    .catch Ljava/io/FileNotFoundException; {:try_start_85 .. :try_end_8d} :catch_70
    .catchall {:try_start_85 .. :try_end_8d} :catchall_4d

    :try_start_8d
    monitor-exit v9

    return-object v0

    .line 1911
    :goto_8f
    nop

    .line 1913
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v12, "WallpaperManagerService"

    const-string v13, "Error getting wallpaper"

    invoke-static {v12, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1915
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    monitor-exit v9

    return-object v11

    .line 1916
    .end local v7    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    .end local v10    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_99
    monitor-exit v9
    :try_end_9a
    .catchall {:try_start_8d .. :try_end_9a} :catchall_4d

    throw v0
.end method

.method public getWallpaperColors(II)Landroid/app/WallpaperColors;
    .registers 12
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2013
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_10

    if-ne p1, v0, :cond_7

    goto :goto_10

    .line 2014
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2016
    :cond_10
    :goto_10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "getWallpaperColors"

    const/4 v8, 0x0

    move v4, p2

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2019
    const/4 v2, 0x0

    .line 2022
    .local v2, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2023
    if-ne p1, v1, :cond_34

    .line 2024
    :try_start_28
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v2, v1

    goto :goto_34

    .line 2037
    :catchall_32
    move-exception v0

    goto :goto_5e

    .line 2029
    :cond_34
    :goto_34
    if-nez v2, :cond_3f

    .line 2030
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2033
    .end local v2    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v1, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object v2, v1

    .line 2033
    .end local v1    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v2    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_3f
    if-nez v2, :cond_44

    .line 2034
    const/4 v0, 0x0

    monitor-exit v3

    return-object v0

    .line 2036
    :cond_44
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez v1, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    .line 2037
    .local v0, "shouldExtract":Z
    :goto_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_28 .. :try_end_4b} :catchall_32

    .line 2039
    if-eqz v0, :cond_50

    .line 2040
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2043
    :cond_50
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2044
    :try_start_53
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getThemeColorsLocked(Landroid/app/WallpaperColors;)Landroid/app/WallpaperColors;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 2045
    :catchall_5b
    move-exception v3

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_5b

    throw v3

    .line 2037
    .end local v0    # "shouldExtract":Z
    :goto_5e
    :try_start_5e
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_32

    throw v0
.end method

.method public getWallpaperIdForUser(II)I
    .registers 10
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 1934
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1935
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getWallpaperIdForUser"

    .line 1934
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1937
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_21

    if-ne p1, v0, :cond_19

    goto :goto_21

    .line 1938
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1942
    :cond_21
    :goto_21
    if-ne p1, v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_28

    :cond_26
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 1943
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_28
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1944
    :try_start_2b
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1945
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v2, :cond_37

    .line 1946
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    monitor-exit v1

    return v3

    .line 1948
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_37
    monitor-exit v1

    .line 1949
    const/4 v1, -0x1

    return v1

    .line 1948
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .registers 9
    .param p1, "userId"    # I

    .line 1921
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1922
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getWallpaperInfo"

    .line 1921
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1923
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1924
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1925
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_29

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_29

    .line 1926
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v0

    return-object v2

    .line 1928
    :cond_29
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1929
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public getWidthHint()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1803
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1804
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1805
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_15

    .line 1806
    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    monitor-exit v0

    return v2

    .line 1808
    :cond_15
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1810
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .line 1726
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1728
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_64

    .line 1730
    .local v1, "ident":J
    :try_start_7
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_5f

    .line 1732
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1733
    nop

    .line 1732
    nop

    .line 1734
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1736
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_33

    .line 1737
    goto :goto_1f

    .line 1739
    :cond_33
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1740
    .local v7, "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v7, :cond_4f

    .line 1742
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v8, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1743
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v7, v6

    .line 1745
    :cond_4f
    if-eqz v7, :cond_5c

    iget-object v6, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 1746
    const/4 v4, 0x1

    monitor-exit v0

    return v4

    .line 1748
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_5c
    goto :goto_1f

    .line 1749
    .end local v1    # "ident":J
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5d
    monitor-exit v0

    .line 1750
    return v6

    .line 1732
    .restart local v1    # "ident":J
    :catchall_5f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1749
    .end local v1    # "ident":J
    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_16 .. :try_end_66} :catchall_64

    throw v1
.end method

.method initialize()V
    .registers 6

    .line 1368
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1369
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1374
    invoke-direct {p0, v0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1375
    invoke-direct {p0, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1376
    return-void
.end method

.method public isSetWallpaperAllowed(Ljava/lang/String;)Z
    .registers 9
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 2511
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2512
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2513
    .local v1, "uidPackages":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2514
    .local v2, "uidMatchPackage":Z
    if-nez v2, :cond_1a

    .line 2515
    const/4 v3, 0x0

    return v3

    .line 2518
    :cond_1a
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 2519
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_46

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_46

    .line 2522
    :cond_32
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 2523
    .local v4, "um":Landroid/os/UserManager;
    const-string/jumbo v6, "no_set_wallpaper"

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    xor-int/2addr v5, v6

    return v5

    .line 2520
    .end local v4    # "um":Landroid/os/UserManager;
    :cond_46
    :goto_46
    return v5
.end method

.method public isWallpaperBackupEligible(II)Z
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 2528
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_23

    .line 2532
    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    .line 2533
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_1c

    .line 2534
    :cond_14
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2535
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_1c
    if-eqz v0, :cond_21

    iget-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1

    .line 2529
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_23
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system may call isWallpaperBackupEligible"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 2505
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method makeWallpaperIdLocked()I
    .registers 2

    .line 958
    :cond_0
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    .line 959
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-eqz v0, :cond_0

    .line 960
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    return v0
.end method

.method notifyLockWallpaperChanged()V
    .registers 3

    .line 438
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 439
    .local v0, "cb":Landroid/app/IWallpaperManagerCallback;
    if-eqz v0, :cond_9

    .line 441
    :try_start_4
    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 444
    goto :goto_9

    .line 442
    :catch_8
    move-exception v1

    .line 446
    :cond_9
    :goto_9
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 1493
    const/16 v0, 0x226

    if-ne p1, v0, :cond_8

    .line 1494
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemReady()V

    goto :goto_11

    .line 1495
    :cond_8
    const/16 v0, 0x258

    if-ne p1, v0, :cond_11

    .line 1496
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    .line 1498
    :cond_11
    :goto_11
    return-void
.end method

.method onRemoveUser(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 1536
    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    return-void

    .line 1538
    :cond_4
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 1539
    .local v0, "wallpaperDir":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1540
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserversLocked(I)V

    .line 1541
    sget-object v2, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_21

    aget-object v5, v2, v4

    .line 1542
    .local v5, "filename":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1541
    .end local v5    # "filename":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1544
    :cond_21
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1545
    monitor-exit v1

    .line 1546
    return-void

    .line 1545
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_28

    throw v2
.end method

.method onThemeSettingsChanged()V
    .registers 6

    .line 417
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 419
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 420
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "theme_mode"

    const/4 v4, 0x0

    .line 419
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 427
    .local v2, "updatedThemeMode":I
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-direct {p0, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->needUpdateLocked(Landroid/app/WallpaperColors;I)Z

    move-result v3

    if-nez v3, :cond_25

    .line 428
    monitor-exit v0

    return-void

    .line 430
    .end local v2    # "updatedThemeMode":I
    :cond_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2d

    .line 432
    if-eqz v1, :cond_2c

    .line 433
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 435
    :cond_2c
    return-void

    .line 430
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public onUnlockUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1502
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1503
    :try_start_3
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_31

    .line 1504
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    if-eqz v1, :cond_14

    .line 1506
    const/4 v1, 0x1

    .line 1507
    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 1508
    .local v1, "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 1515
    .end local v1    # "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_14
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_31

    .line 1516
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseArray;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1517
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 1529
    .local v1, "relabeler":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1532
    .end local v1    # "relabeler":Ljava/lang/Runnable;
    :cond_31
    monitor-exit v0

    .line 1533
    return-void

    .line 1532
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;I)V
    .registers 10
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "userId"    # I

    .line 1954
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "registerWallpaperColorsCallback"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1956
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1957
    :try_start_16
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 1958
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 1959
    .local v1, "userColorsChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    if-nez v1, :cond_2b

    .line 1960
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v1, v2

    .line 1961
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1963
    :cond_2b
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1964
    .end local v1    # "userColorsChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    monitor-exit v0

    .line 1965
    return-void

    .line 1964
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_30

    throw v1
.end method

.method restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 21
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2956
    move-object/from16 v1, p1

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-le v0, v2, :cond_190

    const-string/jumbo v0, "res:"

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    .line 2957
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2959
    .local v4, "resName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2960
    .local v0, "pkg":Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 2961
    .local v5, "colon":I
    if-lez v5, :cond_2e

    .line 2962
    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2965
    .end local v0    # "pkg":Ljava/lang/String;
    .local v6, "pkg":Ljava/lang/String;
    :cond_2e
    move-object v6, v0

    const/4 v0, 0x0

    .line 2966
    .local v0, "ident":Ljava/lang/String;
    const/16 v7, 0x2f

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 2967
    .local v7, "slash":I
    if-lez v7, :cond_3e

    .line 2968
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2971
    .end local v0    # "ident":Ljava/lang/String;
    .local v8, "ident":Ljava/lang/String;
    :cond_3e
    move-object v8, v0

    const/4 v0, 0x0

    .line 2972
    .local v0, "type":Ljava/lang/String;
    const/4 v9, 0x1

    if-lez v5, :cond_4f

    if-lez v7, :cond_4f

    sub-int v10, v7, v5

    if-le v10, v9, :cond_4f

    .line 2973
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v4, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2976
    .end local v0    # "type":Ljava/lang/String;
    .local v10, "type":Ljava/lang/String;
    :cond_4f
    move-object v10, v0

    if-eqz v6, :cond_190

    if-eqz v8, :cond_190

    if-eqz v10, :cond_190

    .line 2977
    const/4 v11, -0x1

    .line 2978
    .local v11, "resId":I
    const/4 v12, 0x0

    .line 2979
    .local v12, "res":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 2980
    .local v13, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    move-object v14, v0

    .line 2982
    .local v14, "cos":Ljava/io/FileOutputStream;
    move-object/from16 v15, p0

    :try_start_5d
    iget-object v9, v15, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 2983
    .local v2, "c":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 2984
    .local v9, "r":Landroid/content/res/Resources;
    invoke-virtual {v9, v4, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v11, v0

    .line 2985
    if-nez v11, :cond_ac

    .line 2986
    const-string v0, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    const-string v2, "couldn\'t resolve identifier pkg="

    .line 2986
    .end local v2    # "c":Landroid/content/Context;
    .local v16, "c":Landroid/content/Context;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ident="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5d .. :try_end_96} :catch_155
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5d .. :try_end_96} :catch_133
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_96} :catch_117
    .catchall {:try_start_5d .. :try_end_96} :catchall_115

    .line 2988
    nop

    .line 3016
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3017
    if-eqz v13, :cond_9f

    .line 3018
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3020
    :cond_9f
    if-eqz v14, :cond_a4

    .line 3021
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3023
    :cond_a4
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3024
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2988
    const/4 v2, 0x0

    return v2

    .line 2991
    .end local v16    # "c":Landroid/content/Context;
    .restart local v2    # "c":Landroid/content/Context;
    :cond_ac
    move-object/from16 v16, v2

    .line 2991
    .end local v2    # "c":Landroid/content/Context;
    .restart local v16    # "c":Landroid/content/Context;
    :try_start_ae
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    move-object v12, v0

    .line 2992
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 2993
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2994
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2996
    :cond_c5
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v13, v0

    .line 2997
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v14, v0

    .line 2999
    const v0, 0x8000

    new-array v0, v0, [B

    .line 3001
    .local v0, "buffer":[B
    :goto_da
    invoke-virtual {v12, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .line 3001
    .local v3, "amt":I
    if-lez v2, :cond_e9

    .line 3002
    const/4 v2, 0x0

    invoke-virtual {v13, v0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3003
    invoke-virtual {v14, v0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_da

    .line 3007
    :cond_e9
    const-string v2, "WallpaperManagerService"

    move-object/from16 v17, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 3007
    .end local v0    # "buffer":[B
    .local v17, "buffer":[B
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restored wallpaper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_101
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ae .. :try_end_101} :catch_155
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_ae .. :try_end_101} :catch_133
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_101} :catch_117
    .catchall {:try_start_ae .. :try_end_101} :catchall_115

    .line 3008
    nop

    .line 3016
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3017
    nop

    .line 3018
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3020
    nop

    .line 3021
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3023
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3024
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3008
    const/4 v0, 0x1

    return v0

    .line 3016
    .end local v3    # "amt":I
    .end local v9    # "r":Landroid/content/res/Resources;
    .end local v16    # "c":Landroid/content/Context;
    .end local v17    # "buffer":[B
    :catchall_115
    move-exception v0

    goto :goto_17c

    .line 3013
    :catch_117
    move-exception v0

    .line 3014
    .local v0, "e":Ljava/io/IOException;
    :try_start_118
    const-string v1, "WallpaperManagerService"

    const-string v2, "IOException while restoring wallpaper "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11f
    .catchall {:try_start_118 .. :try_end_11f} :catchall_115

    .line 3016
    .end local v0    # "e":Ljava/io/IOException;
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3017
    if-eqz v13, :cond_127

    .line 3018
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3020
    :cond_127
    if-eqz v14, :cond_12c

    .line 3021
    :goto_129
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3023
    :cond_12c
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3024
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3025
    goto :goto_192

    .line 3011
    :catch_133
    move-exception v0

    .line 3012
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_134
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14a
    .catchall {:try_start_134 .. :try_end_14a} :catchall_115

    .line 3016
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3017
    if-eqz v13, :cond_152

    .line 3018
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3020
    :cond_152
    if-eqz v14, :cond_12c

    goto :goto_129

    .line 3009
    :catch_155
    move-exception v0

    .line 3010
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_156
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_171
    .catchall {:try_start_156 .. :try_end_171} :catchall_115

    .line 3016
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3017
    if-eqz v13, :cond_179

    .line 3018
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3020
    :cond_179
    if-eqz v14, :cond_12c

    goto :goto_129

    .line 3016
    :goto_17c
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3017
    if-eqz v13, :cond_184

    .line 3018
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3020
    :cond_184
    if-eqz v14, :cond_189

    .line 3021
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3023
    :cond_189
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3024
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 3028
    .end local v4    # "resName":Ljava/lang/String;
    .end local v5    # "colon":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "slash":I
    .end local v8    # "ident":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "resId":I
    .end local v12    # "res":Ljava/io/InputStream;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "cos":Ljava/io/FileOutputStream;
    :cond_190
    move-object/from16 v15, p0

    :goto_192
    const/4 v1, 0x0

    return v1
.end method

.method public setDimensionHints(IILjava/lang/String;)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1763
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1765
    return-void

    .line 1767
    :cond_c
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1768
    :try_start_f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1769
    .local v1, "userId":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .line 1770
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-lez p1, :cond_66

    if-lez p2, :cond_66

    .line 1774
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v4

    .line 1775
    .local v4, "displaySize":Landroid/graphics/Point;
    iget v5, v4, Landroid/graphics/Point;->x:I

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move p1, v5

    .line 1776
    iget v5, v4, Landroid/graphics/Point;->y:I

    invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move p2, v5

    .line 1778
    iget v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ne p1, v5, :cond_36

    iget v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-eq p2, v5, :cond_64

    .line 1779
    :cond_36
    iput p1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1780
    iput p2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1781
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 1782
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v5, v1, :cond_43

    monitor-exit v0

    return-void

    .line 1783
    :cond_43
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v5, :cond_64

    .line 1784
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_6f

    if-eqz v5, :cond_5a

    .line 1786
    :try_start_4d
    iget-object v2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v2, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_54} :catch_55
    .catchall {:try_start_4d .. :try_end_54} :catchall_6f

    .line 1789
    goto :goto_56

    .line 1788
    :catch_55
    move-exception v2

    .line 1790
    :goto_56
    :try_start_56
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_64

    .line 1791
    :cond_5a
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v5, :cond_64

    .line 1795
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-boolean v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z

    .line 1799
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "displaySize":Landroid/graphics/Point;
    :cond_64
    :goto_64
    monitor-exit v0

    .line 1800
    return-void

    .line 1771
    .restart local v1    # "userId":I
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_66
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "width and height must be > 0"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1799
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_56 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V
    .registers 9
    .param p1, "padding"    # Landroid/graphics/Rect;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1825
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1826
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1827
    return-void

    .line 1829
    :cond_c
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1830
    :try_start_f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1831
    .local v1, "userId":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .line 1832
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-ltz v4, :cond_61

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_61

    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-ltz v4, :cond_61

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ltz v4, :cond_61

    .line 1836
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5f

    .line 1837
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1838
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 1839
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v4, v1, :cond_3e

    monitor-exit v0

    return-void

    .line 1840
    :cond_3e
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_5f

    .line 1841
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_46
    .catchall {:try_start_f .. :try_end_46} :catchall_79

    if-eqz v4, :cond_55

    .line 1843
    :try_start_48
    iget-object v2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v2, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4f} :catch_50
    .catchall {:try_start_48 .. :try_end_4f} :catchall_79

    .line 1845
    goto :goto_51

    .line 1844
    :catch_50
    move-exception v2

    .line 1846
    :goto_51
    :try_start_51
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_5f

    .line 1847
    :cond_55
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v4, :cond_5f

    .line 1851
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-boolean v2, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mPaddingChanged:Z

    .line 1855
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_5f
    :goto_5f
    monitor-exit v0

    .line 1856
    return-void

    .line 1833
    .restart local v1    # "userId":I
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_61
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "padding must be positive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1855
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_79
    move-exception v1

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_51 .. :try_end_7b} :catchall_79

    throw v1
.end method

.method public setInAmbientMode(ZZ)V
    .registers 6
    .param p1, "inAmbienMode"    # Z
    .param p2, "animated"    # Z

    .line 1982
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1983
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    .line 1984
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1985
    .local v1, "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_2a

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_2a

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_2a

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 1986
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getSupportsAmbientMode()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1987
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .local v2, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    goto :goto_2b

    .line 1989
    .end local v2    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :cond_2a
    const/4 v2, 0x0

    .end local v1    # "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v2    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :goto_2b
    move-object v1, v2

    .line 1991
    .end local v2    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    .local v1, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_35

    .line 1993
    if-eqz v1, :cond_34

    .line 1995
    :try_start_2f
    invoke-interface {v1, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setInAmbientMode(ZZ)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_33

    .line 1998
    goto :goto_34

    .line 1996
    :catch_33
    move-exception v0

    .line 2000
    :cond_34
    :goto_34
    return-void

    .line 1991
    .end local v1    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .registers 4
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;

    .line 2004
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2005
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2006
    :try_start_8
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 2007
    monitor-exit v0

    .line 2008
    const/4 v0, 0x1

    return v0

    .line 2007
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "cropHint"    # Landroid/graphics/Rect;
    .param p4, "allowBackup"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "which"    # I
    .param p7, "completion"    # Landroid/app/IWallpaperManagerCallback;
    .param p8, "userId"    # I

    .line 2086
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingUid()I

    move-result v1

    const-string v5, "changing wallpaper"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p8

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p8

    .line 2088
    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2090
    and-int/lit8 v0, p6, 0x3

    if-eqz v0, :cond_97

    .line 2096
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_95

    .line 2101
    :cond_29
    if-nez p3, :cond_33

    .line 2102
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p3, v0

    goto :goto_42

    .line 2104
    :cond_33
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7e

    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_7e

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_7e

    .line 2111
    move-object v0, p3

    .end local p3    # "cropHint":Landroid/graphics/Rect;
    .local v0, "cropHint":Landroid/graphics/Rect;
    :goto_42
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2119
    const/4 p3, 0x1

    if-ne p6, p3, :cond_56

    :try_start_48
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_56

    .line 2123
    invoke-direct {p0, p8}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(I)V

    goto :goto_56

    .line 2141
    :catchall_54
    move-exception p3

    goto :goto_7c

    .line 2126
    :cond_56
    :goto_56
    invoke-direct {p0, p8, p6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 2127
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_5e
    .catchall {:try_start_48 .. :try_end_5e} :catchall_54

    .line 2129
    .local v3, "ident":J
    :try_start_5e
    invoke-virtual {p0, p1, v2, p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 2130
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v5, :cond_71

    .line 2131
    iput-boolean p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 2132
    iput p6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 2133
    iput-object p7, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    .line 2134
    iget-object p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2135
    iput-boolean p4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z
    :try_end_71
    .catchall {:try_start_5e .. :try_end_71} :catchall_77

    .line 2137
    :cond_71
    nop

    .line 2139
    :try_start_72
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    .line 2137
    return-object v5

    .line 2139
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_77
    move-exception p3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p3

    .line 2141
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v3    # "ident":J
    :goto_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_72 .. :try_end_7d} :catchall_54

    throw p3

    .line 2107
    .end local v0    # "cropHint":Landroid/graphics/Rect;
    .restart local p3    # "cropHint":Landroid/graphics/Rect;
    :cond_7e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid crop rect supplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2097
    :cond_95
    :goto_95
    const/4 v0, 0x0

    return-object v0

    .line 2091
    :cond_97
    const-string v0, "Must specify a valid wallpaper category to set"

    .line 2092
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "WallpaperManagerService"

    const-string v2, "Must specify a valid wallpaper category to set"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify a valid wallpaper category to set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 2224
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    .line 2225
    return-void
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2216
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2217
    invoke-direct {p0, p1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    .line 2219
    :cond_f
    return-void
.end method

.method public settingsRestored()V
    .registers 12

    .line 2900
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a2

    .line 2906
    const/4 v0, 0x0

    .line 2907
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v1, 0x0

    .line 2908
    .local v1, "success":Z
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2909
    const/4 v3, 0x0

    :try_start_e
    invoke-direct {p0, v3, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 2910
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v4

    .line 2911
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2912
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 2913
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_49

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 2914
    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 2915
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 2920
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 2922
    :cond_47
    const/4 v1, 0x1

    goto :goto_69

    .line 2926
    :cond_49
    const-string v4, ""

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 2928
    const/4 v1, 0x1

    goto :goto_5a

    .line 2931
    :cond_55
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v4

    move v1, v4

    .line 2935
    :goto_5a
    if-eqz v1, :cond_69

    .line 2936
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2937
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 2941
    :cond_69
    :goto_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_e .. :try_end_6a} :catchall_9f

    .line 2943
    if-nez v1, :cond_94

    .line 2944
    const-string v2, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to restore wallpaper: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    const-string v2, ""

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2946
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2949
    :cond_94
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2950
    :try_start_97
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 2951
    monitor-exit v4

    .line 2952
    return-void

    .line 2951
    :catchall_9c
    move-exception v2

    monitor-exit v4
    :try_end_9e
    .catchall {:try_start_97 .. :try_end_9e} :catchall_9c

    throw v2

    .line 2941
    :catchall_9f
    move-exception v3

    :try_start_a0
    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw v3

    .line 2901
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v1    # "success":Z
    :cond_a2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "settingsRestored() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 5
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1472
    if-eqz p1, :cond_1b

    .line 1473
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1474
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 1475
    iput-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 1477
    :cond_e
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->themeSettingsObserver:Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;

    if-eqz v0, :cond_1b

    .line 1478
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->themeSettingsObserver:Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;->stopObserving(Landroid/content/Context;)V

    .line 1479
    iput-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->themeSettingsObserver:Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;

    .line 1482
    :cond_1b
    return-void
.end method

.method stopObserversLocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 1485
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1486
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1487
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1488
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1489
    return-void
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .line 1551
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1552
    :try_start_3
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_9

    .line 1553
    monitor-exit v0

    return-void

    .line 1555
    :cond_9
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 1556
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 1557
    .local v1, "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1558
    .local v2, "tmpLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v2, :cond_1c

    move-object v3, v1

    goto :goto_1d

    :cond_1c
    move-object v3, v2

    .line 1560
    .local v3, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_1d
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v4, :cond_2d

    .line 1561
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v4, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 1562
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 1564
    :cond_2d
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->themeSettingsObserver:Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;

    if-nez v4, :cond_40

    .line 1565
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/os/Handler;)V

    iput-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->themeSettingsObserver:Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;

    .line 1566
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->themeSettingsObserver:Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;->startObserving(Landroid/content/Context;)V

    .line 1568
    :cond_40
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 1569
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "theme_mode"

    const/4 v6, 0x0

    .line 1568
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    .line 1571
    invoke-virtual {p0, v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 1572
    .end local v2    # "tmpLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_61

    .line 1576
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$KpV9TczlJklVG4VNZncaU86_KtQ;

    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$KpV9TczlJklVG4VNZncaU86_KtQ;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1580
    return-void

    .line 1572
    .end local v1    # "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v3    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_61
    move-exception v1

    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v1
.end method

.method switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .registers 17
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    move-object v7, p0

    move-object v8, p1

    .line 1583
    iget-object v9, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1584
    const/4 v10, 0x0

    :try_start_6
    iput-boolean v10, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    .line 1585
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_f

    .line 1586
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    goto :goto_11

    :cond_f
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    :goto_11
    move-object v11, v0

    .line 1587
    .local v11, "cname":Landroid/content/ComponentName;
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, v7

    move-object v2, v11

    move-object v5, v8

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_70

    if-nez v0, :cond_6c

    .line 1590
    const/4 v0, 0x0

    move-object v1, v0

    .line 1592
    .local v1, "si":Landroid/content/pm/ServiceInfo;
    :try_start_21
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/high16 v2, 0x40000

    iget v3, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-interface {v0, v11, v2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2b} :catch_2d
    .catchall {:try_start_21 .. :try_end_2b} :catchall_70

    move-object v1, v0

    .line 1595
    goto :goto_2f

    .line 1594
    :catch_2d
    move-exception v0

    .line 1597
    move-object v0, v1

    .line 1597
    .end local v1    # "si":Landroid/content/pm/ServiceInfo;
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    :goto_2f
    const/4 v12, 0x1

    if-nez v0, :cond_41

    .line 1598
    :try_start_32
    const-string v1, "WallpaperManagerService"

    const-string v2, "Failure starting previous wallpaper; clearing"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_70

    move-object/from16 v13, p2

    :try_start_3d
    invoke-virtual {v7, v10, v12, v1, v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    goto :goto_6e

    .line 1601
    :cond_41
    move-object/from16 v13, p2

    const-string v1, "WallpaperManagerService"

    const-string v2, "Wallpaper isn\'t direct boot aware; using fallback until unlocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    iget-object v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iput-object v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1606
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v2, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const-string/jumbo v3, "wallpaper_lock_orig"

    const-string/jumbo v4, "wallpaper_lock"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v10, v1

    .line 1608
    .local v10, "fallback":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {v7, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1609
    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, v7

    move-object v5, v10

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1610
    iput-boolean v12, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    .line 1610
    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v10    # "fallback":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v11    # "cname":Landroid/content/ComponentName;
    goto :goto_6e

    .line 1613
    :cond_6c
    move-object/from16 v13, p2

    :goto_6e
    monitor-exit v9

    .line 1614
    return-void

    .line 1613
    :catchall_70
    move-exception v0

    move-object/from16 v13, p2

    :goto_73
    monitor-exit v9
    :try_end_74
    .catchall {:try_start_3d .. :try_end_74} :catchall_75

    throw v0

    :catchall_75
    move-exception v0

    goto :goto_73
.end method

.method systemReady()V
    .registers 7

    .line 1393
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initialize()V

    .line 1395
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1398
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1400
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1404
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1407
    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1411
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 1419
    :cond_2a
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1420
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1421
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1432
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1433
    .local v2, "shutdownFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1448
    :try_start_4f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    const-string v5, "WallpaperManagerService"

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_5d} :catch_5e

    .line 1457
    goto :goto_62

    .line 1455
    :catch_5e
    move-exception v3

    .line 1456
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1458
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_62
    return-void
.end method

.method public unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;I)V
    .registers 10
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "userId"    # I

    .line 1969
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "unregisterWallpaperColorsCallback"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1971
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1972
    :try_start_16
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 1973
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 1974
    .local v1, "userColorsChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    if-eqz v1, :cond_23

    .line 1975
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1977
    .end local v1    # "userColorsChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    :cond_23
    monitor-exit v0

    .line 1978
    return-void

    .line 1977
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_25

    throw v1
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2179
    if-nez p1, :cond_4

    const-string p1, ""

    .line 2181
    :cond_4
    const/4 v0, 0x0

    :try_start_5
    iget v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    .line 2182
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2183
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 2184
    nop

    .line 2185
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    .line 2184
    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2189
    :cond_1f
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    const/high16 v3, 0x3c000000    # 0.0078125f

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 2191
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 2192
    return-object v0

    .line 2194
    :cond_30
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2195
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v3

    iput v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2196
    if-eqz p3, :cond_41

    .line 2197
    const-string v3, "android.service.wallpaper.extra.ID"

    iget v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2200
    :cond_41
    iput-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_43} :catch_44

    .line 2205
    return-object v2

    .line 2206
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_44
    move-exception v1

    .line 2207
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "WallpaperManagerService"

    const-string v3, "Error setting wallpaper"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2209
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    return-object v0
.end method
