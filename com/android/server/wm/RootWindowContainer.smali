.class Lcom/android/server/wm/RootWindowContainer;
.super Lcom/android/server/wm/WindowContainer;
.source "RootWindowContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RootWindowContainer$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/DisplayContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final SET_SCREEN_BRIGHTNESS_OVERRIDE:I = 0x1

.field private static final SET_USER_ACTIVITY_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseSystemDialogsReason:Ljava/lang/String;

.field private final mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mHandler:Landroid/os/Handler;

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mHoldScreenWindow:Lcom/android/server/wm/WindowState;

.field private mLastWindowFreezeSource:Ljava/lang/Object;

.field private mObscureApplicationContentOnSecondaryDisplays:Z

.field mObscuringWindow:Lcom/android/server/wm/WindowState;

.field mOrientationChangeComplete:Z

.field private mScreenBrightness:F

.field private mSustainedPerformanceModeCurrent:Z

.field private mSustainedPerformanceModeEnabled:Z

.field private final mTmpStackIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpStackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mWallpaperActionPending:Z

.field final mWallpaperController:Lcom/android/server/wm/WallpaperController;

.field private mWallpaperForceHidingChanged:Z

.field mWallpaperMayChange:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 146
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$Vvv8jzH2oSE9-eakZwTuKd5NpsU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$Vvv8jzH2oSE9-eakZwTuKd5NpsU;

    sput-object v0, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 100
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 101
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    .line 102
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 103
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 106
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 108
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 111
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 122
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackList:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackIds:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 137
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$qT2ficAmvrvFcBdiJIGNKxJ8Z9Q;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$qT2ficAmvrvFcBdiJIGNKxJ8Z9Q;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    .line 155
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$MyHandler;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer$MyHandler;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    .line 156
    new-instance v0, Lcom/android/server/wm/WallpaperController;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/WallpaperController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 157
    return-void
.end method

.method private applySurfaceChangesTransaction(ZII)V
    .registers 9
    .param p1, "recoveringMemory"    # Z
    .param p2, "defaultDw"    # I
    .param p3, "defaultDh"    # I

    .line 858
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 859
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 862
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v0, :cond_12

    .line 863
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/Watermark;->positionSurface(II)V

    .line 867
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    if-eqz v0, :cond_1f

    .line 868
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/MIUIWatermark;->positionSurface(II)V

    .line 871
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

    if-eqz v0, :cond_2c

    .line 872
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/TalkbackWatermark;->positionSurface(II)V

    .line 876
    :cond_2c
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v0, :cond_39

    .line 877
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(II)V

    .line 879
    :cond_39
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-eqz v0, :cond_4c

    .line 880
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 881
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v1

    .line 880
    invoke-virtual {v0, p2, p3, v1}, Lcom/android/server/wm/CircularDisplayMask;->positionSurface(III)V

    .line 883
    :cond_4c
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-eqz v0, :cond_5f

    .line 884
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 885
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v1

    .line 884
    invoke-virtual {v0, p2, p3, v1}, Lcom/android/server/wm/EmulatorDisplayOverlay;->positionSurface(III)V

    .line 888
    :cond_5f
    const/4 v0, 0x0

    .line 890
    .local v0, "focusDisplayed":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 891
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_67
    if-ge v2, v1, :cond_79

    .line 892
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 893
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent;->applySurfaceChangesTransaction(Z)Z

    move-result v4

    or-int/2addr v0, v4

    .line 891
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 896
    .end local v2    # "j":I
    :cond_79
    if-eqz v0, :cond_83

    .line 897
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 902
    :cond_83
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    .line 903
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v2}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 904
    return-void
.end method

.method private getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .registers 6
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "objectId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 279
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$O6gArs92KbWUhitra1og4WTg69c;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$O6gArs92KbWUhitra1og4WTg69c;-><init>(Ljava/lang/String;Ljava/util/ArrayList;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 288
    return-void
.end method

.method private handleResizingWindows()Landroid/util/ArraySet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/DisplayContent;",
            ">;"
        }
    .end annotation

    .line 913
    const/4 v0, 0x0

    .line 914
    .local v0, "touchExcludeRegionUpdateSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/DisplayContent;>;"
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_42

    .line 915
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 916
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-eqz v3, :cond_1c

    .line 918
    goto :goto_3f

    .line 920
    :cond_1c
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->reportResized()V

    .line 921
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 922
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->excludeWindowTypeFromTapOutTask(I)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 923
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 924
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_3c

    .line 925
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v4

    .line 927
    :cond_3c
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 914
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_3f
    :goto_3f
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 930
    .end local v1    # "i":I
    :cond_42
    return-object v0
.end method

.method static synthetic lambda$canShowStrictModeViolation$6(ILcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "pid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 443
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne v0, p0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$dumpWindowsNoHeader$9(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZLcom/android/server/wm/WindowState;)V
    .registers 9
    .param p0, "windows"    # Ljava/util/ArrayList;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "index"    # [I
    .param p3, "dumpAll"    # Z
    .param p4, "w"    # Lcom/android/server/wm/WindowState;

    .line 1104
    if-eqz p0, :cond_8

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1105
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Window #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1106
    const-string v0, "    "

    const/4 v2, 0x1

    if-nez p3, :cond_36

    if-eqz p0, :cond_34

    goto :goto_36

    :cond_34
    move v3, v1

    goto :goto_37

    :cond_36
    :goto_36
    move v3, v2

    :goto_37
    invoke-virtual {p4, p1, v0, v3}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1107
    aget v0, p2, v1

    add-int/2addr v0, v2

    aput v0, p2, v1

    .line 1109
    :cond_3f
    return-void
.end method

.method static synthetic lambda$getWindowsByName$2(Ljava/lang/String;Ljava/util/ArrayList;ILcom/android/server/wm/WindowState;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/util/ArrayList;
    .param p2, "objectId"    # I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 280
    if-eqz p0, :cond_16

    .line 281
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 282
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 284
    :cond_16
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_1f

    .line 285
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_1f
    :goto_1f
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 138
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_d

    .line 140
    :try_start_4
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 142
    goto :goto_d

    .line 141
    :catch_c
    move-exception v0

    .line 144
    :cond_d
    :goto_d
    return-void
.end method

.method static synthetic lambda$performSurfacePlacement$8(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 639
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mIsDummyVisible:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 642
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 643
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v1, "hide by gesture"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 645
    :cond_21
    return-void
.end method

.method public static synthetic lambda$reclaimSomeSurfaceMemory$7(Lcom/android/server/wm/RootWindowContainer;Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "pidCandidates"    # Landroid/util/SparseIntArray;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 506
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 507
    return-void

    .line 509
    :cond_b
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 510
    .local v0, "wsa":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_1c

    .line 511
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 513
    :cond_1c
    return-void
.end method

.method static synthetic lambda$setSecureSurfaceState$3(IZLcom/android/server/wm/WindowState;)V
    .registers 4
    .param p0, "userId"    # I
    .param p1, "disabled"    # Z
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 422
    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_11

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p0, v0, :cond_11

    .line 423
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    .line 425
    :cond_11
    return-void
.end method

.method static synthetic lambda$static$1(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 148
    .local v0, "aToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_7

    .line 149
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppWindowToken;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V

    .line 151
    :cond_7
    return-void
.end method

.method static synthetic lambda$updateAppOpsState$5(Lcom/android/server/wm/WindowState;)V
    .registers 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 438
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateAppOpsState()V

    .line 439
    return-void
.end method

.method static synthetic lambda$updateHiddenWhileSuspendedState$4(Landroid/util/ArraySet;ZLcom/android/server/wm/WindowState;)V
    .registers 4
    .param p0, "packages"    # Landroid/util/ArraySet;
    .param p1, "suspended"    # Z
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 430
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 431
    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowState;->setHiddenWhileSuspended(Z)V

    .line 433
    :cond_d
    return-void
.end method

.method static synthetic lambda$writeToProto$10(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 1133
    const-wide v0, 0x20b00000003L

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1134
    return-void
.end method

.method private prepareFreezingTaskBounds()V
    .registers 3

    .line 404
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 405
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->prepareFreezingTaskBounds()V

    .line 404
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 407
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method private setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;Ljava/util/List;)V
    .registers 4
    .param p1, "newConfiguration"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Configuration;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskStack;",
            ">;)V"
        }
    .end annotation

    .line 369
    .local p2, "changedStacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 370
    .local v0, "configChanged":Z
    :goto_d
    if-nez v0, :cond_10

    .line 371
    return-void

    .line 373
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 374
    invoke-direct {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->updateStackBoundsAfterConfigChange(Ljava/util/List;)V

    .line 375
    return-void
.end method

.method private toBrightnessOverride(F)I
    .registers 4
    .param p1, "value"    # F

    .line 1045
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 1046
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    .line 1045
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private updateStackBoundsAfterConfigChange(ILjava/util/List;)V
    .registers 4
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskStack;",
            ">;)V"
        }
    .end annotation

    .line 399
    .local p2, "changedStacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 400
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayContent;->updateStackBoundsAfterConfigChange(Ljava/util/List;)V

    .line 401
    return-void
.end method

.method private updateStackBoundsAfterConfigChange(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskStack;",
            ">;)V"
        }
    .end annotation

    .line 390
    .local p1, "changedStacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskStack;>;"
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 391
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 392
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 393
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2, p1}, Lcom/android/server/wm/DisplayContent;->updateStackBoundsAfterConfigChange(Ljava/util/List;)V

    .line 391
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 395
    .end local v1    # "i":I
    :cond_17
    return-void
.end method


# virtual methods
.method canShowStrictModeViolation(I)Z
    .registers 4
    .param p1, "pid"    # I

    .line 443
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ZTXupc1zKRWZgWpo-r3so3blHoI;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ZTXupc1zKRWZgWpo-r3so3blHoI;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 444
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method closeSystemDialogs(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 448
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    .line 449
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 450
    return-void
.end method

.method computeFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 10

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    .line 164
    .local v0, "forceDefaultDisplay":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_44

    .line 165
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 166
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 167
    .local v4, "win":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_41

    .line 168
    if-eqz v0, :cond_40

    iget-boolean v5, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v5, :cond_40

    .line 169
    const v5, 0x534e4554

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "71786287"

    aput-object v8, v6, v7

    iget v7, v4, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x2

    const-string v8, ""

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 170
    goto :goto_41

    .line 172
    :cond_40
    return-object v4

    .line 164
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_41
    :goto_41
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 175
    .end local v1    # "i":I
    :cond_44
    const/4 v1, 0x0

    return-object v1
.end method

.method copyAnimToLayoutParams()Z
    .registers 5

    .line 1010
    const/4 v0, 0x0

    .line 1012
    .local v0, "doRequest":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1013
    .local v1, "bulkUpdateParams":I
    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_f

    .line 1014
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 1015
    const/4 v0, 0x1

    .line 1017
    :cond_f
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_16

    .line 1018
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    .line 1019
    const/4 v0, 0x1

    .line 1021
    :cond_16
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1d

    .line 1022
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    .line 1023
    const/4 v0, 0x1

    .line 1025
    :cond_1d
    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_25

    .line 1026
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    goto :goto_36

    .line 1028
    :cond_25
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 1029
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 1030
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v2, :cond_36

    .line 1031
    const/4 v0, 0x1

    .line 1035
    :cond_36
    :goto_36
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_3c

    .line 1036
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 1039
    :cond_3c
    return v0
.end method

.method createDisplayContent(Landroid/view/Display;Lcom/android/server/wm/DisplayWindowController;)Lcom/android/server/wm/DisplayContent;
    .registers 11
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "controller"    # Lcom/android/server/wm/DisplayWindowController;

    .line 207
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 212
    .local v0, "displayId":I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 214
    .local v1, "existing":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_e

    .line 215
    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent;->setController(Lcom/android/server/wm/WindowContainerController;)V

    .line 216
    return-object v1

    .line 219
    :cond_e
    new-instance v2, Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-direct {v2, p1, v3, v4, p2}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/DisplayWindowController;)V

    .line 224
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 225
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 226
    .local v4, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    iget-object v6, v3, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iget-object v7, v3, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v4}, Lcom/android/server/wm/DisplaySettings;->getOverscanLocked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 227
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/view/DisplayInfo;->overscanLeft:I

    .line 228
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/view/DisplayInfo;->overscanTop:I

    .line 229
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iput v5, v3, Landroid/view/DisplayInfo;->overscanRight:I

    .line 230
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v3, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 231
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v5, :cond_6e

    .line 232
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v5, v0, v3}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 234
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 239
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->canDispatchPointerEvents()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 244
    new-instance v5, Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v5, v6, v2}, Lcom/android/server/wm/TaskTapPointerEventListener;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    .line 245
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v2, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 246
    if-nez v0, :cond_6e

    .line 247
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 252
    :cond_6e
    return-object v2
.end method

.method dumpDisplayContents(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1074
    const-string v0, "WINDOW MANAGER DISPLAY CONTENTS (dumpsys window displays)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_26

    .line 1076
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1077
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_25

    .line 1078
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1079
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    const-string v3, "  "

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1077
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1081
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_25
    goto :goto_2b

    .line 1082
    :cond_26
    const-string v0, "  NO DISPLAY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1084
    :goto_2b
    return-void
.end method

.method dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1087
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1088
    return-void

    .line 1090
    :cond_7
    const-string v0, "  mLayoutNeeded on displays="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1092
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_13
    if-ge v1, v0, :cond_2d

    .line 1093
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1094
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1095
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1092
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1098
    .end local v1    # "displayNdx":I
    :cond_2d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1099
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .line 1113
    const-string v0, "  All tokens:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_1d

    .line 1115
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->dumpTokens(Ljava/io/PrintWriter;Z)V

    .line 1114
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1117
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method dumpWindowsNoHeader(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 1102
    .local p3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1103
    .local v1, "index":[I
    new-instance v2, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$y9wG_endhUBCwGznyjN4RSIYTyg;

    invoke-direct {v2, p3, p1, v1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$y9wG_endhUBCwGznyjN4RSIYTyg;-><init>(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZ)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1110
    return-void
.end method

.method getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 296
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 297
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 298
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 299
    .local v2, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_19

    .line 300
    return-object v2

    .line 296
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 303
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getDisplayContent(I)Lcom/android/server/wm/DisplayContent;
    .registers 5
    .param p1, "displayId"    # I

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 198
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 199
    .local v1, "current":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_19

    .line 200
    return-object v1

    .line 197
    .end local v1    # "current":Lcom/android/server/wm/DisplayContent;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 203
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V
    .registers 6
    .param p1, "displaysInFocusOrder"    # Landroid/util/SparseIntArray;

    .line 183
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 186
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_25

    .line 187
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 188
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isRemovalDeferred()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 190
    goto :goto_22

    .line 192
    :cond_1b
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 186
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 194
    .end local v1    # "i":I
    :cond_25
    return-void
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 1141
    const-string v0, "ROOT"

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/TaskStack;
    .registers 6
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 410
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 411
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 412
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 413
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v2, :cond_19

    .line 414
    return-object v2

    .line 410
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 417
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;
    .registers 6
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 308
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 309
    return-object v0

    .line 312
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_22

    .line 313
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 314
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v3, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v3

    .line 315
    .local v3, "current":Lcom/android/server/wm/WindowToken;
    if-ne v3, p1, :cond_1f

    .line 316
    return-object v2

    .line 312
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "current":Lcom/android/server/wm/WindowToken;
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 320
    .end local v1    # "i":I
    :cond_22
    return-object v0
.end method

.method getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 267
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x0

    .line 270
    .local v0, "objectId":I
    const/16 v1, 0x10

    :try_start_3
    invoke-static {p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_7} :catch_a

    move v0, v1

    .line 271
    const/4 p2, 0x0

    .line 273
    goto :goto_b

    .line 272
    :catch_a
    move-exception v1

    .line 275
    :goto_b
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 276
    return-void
.end method

.method handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z
    .registers 14
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "obscured"    # Z
    .param p3, "syswin"    # Z

    .line 941
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 942
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 943
    .local v1, "attrFlags":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v2

    .line 944
    .local v2, "onScreen":Z
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v3

    .line 945
    .local v3, "canBeSeen":Z
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 946
    .local v4, "privateflags":I
    const/4 v5, 0x0

    .line 955
    .local v5, "displayHasContent":Z
    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v6, :cond_2d

    if-eqz v2, :cond_2d

    .line 956
    if-nez p3, :cond_2d

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2d

    iget-wide v6, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_2d

    .line 957
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v6, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 963
    :cond_2d
    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v6, :cond_9e

    if-eqz v3, :cond_9e

    .line 964
    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_3d

    .line 965
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 966
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 972
    :cond_3d
    if-nez p3, :cond_54

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_54

    iget v6, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_54

    .line 973
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v6, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    .line 976
    :cond_54
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 979
    .local v6, "type":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    .line 980
    .local v7, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v8, 0x1

    if-eqz v7, :cond_6f

    iget-boolean v9, v7, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v9, :cond_6f

    .line 984
    const/16 v9, 0x7e7

    if-eq v6, v9, :cond_6b

    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_6d

    .line 985
    :cond_6b
    iput-boolean v8, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 987
    :cond_6d
    const/4 v5, 0x1

    goto :goto_7c

    .line 988
    :cond_6f
    if-eqz v7, :cond_7c

    iget-boolean v9, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    if-eqz v9, :cond_7b

    if-eqz p2, :cond_7c

    const/16 v9, 0x7d9

    if-ne v6, v9, :cond_7c

    .line 992
    :cond_7b
    const/4 v5, 0x1

    .line 994
    :cond_7c
    :goto_7c
    const/high16 v9, 0x40000

    and-int/2addr v9, v4

    if-eqz v9, :cond_83

    .line 995
    iput-boolean v8, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 999
    :cond_83
    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_9e

    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7d4

    if-eq v8, v9, :cond_9e

    .line 1001
    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget v9, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v8, v9}, Landroid/os/PowerManagerInternal;->addVisibleWindowUids(I)V

    .line 1006
    .end local v6    # "type":I
    .end local v7    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_9e
    return v5
.end method

.method hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z
    .registers 8
    .param p1, "animator"    # Lcom/android/server/wm/WindowAnimator;

    .line 464
    const/4 v0, 0x0

    .line 466
    .local v0, "hasChanges":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 467
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_2a

    .line 468
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 469
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v4

    .line 470
    .local v4, "pendingChanges":I
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_24

    .line 471
    iget v5, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 473
    :cond_24
    if-eqz v4, :cond_27

    .line 474
    const/4 v0, 0x1

    .line 467
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "pendingChanges":I
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 478
    .end local v2    # "i":I
    :cond_2a
    return v0
.end method

.method isLayoutNeeded()Z
    .registers 6

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 257
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "displayNdx":I
    :goto_8
    if-ge v2, v0, :cond_1d

    .line 258
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 259
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 260
    const/4 v1, 0x1

    return v1

    .line 257
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 263
    .end local v2    # "displayNdx":I
    :cond_1d
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 379
    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->prepareFreezingTaskBounds()V

    .line 380
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 382
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->onConfigurationChanged()V

    .line 383
    return-void
.end method

.method performSurfacePlacement(Z)V
    .registers 22
    .param p1, "recoveringMemory"    # Z

    move-object/from16 v1, p0

    .line 564
    const/4 v0, 0x0

    .line 566
    .local v0, "updateInputWindowsNeeded":Z
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    .line 567
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 568
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    .line 573
    .end local v0    # "updateInputWindowsNeeded":Z
    .local v2, "updateInputWindowsNeeded":Z
    :cond_15
    move v2, v0

    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 574
    .local v4, "numDisplays":I
    move v0, v3

    .line 574
    .local v0, "displayNdx":I
    :goto_1d
    if-ge v0, v4, :cond_2d

    .line 575
    iget-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 576
    .local v5, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v5, v3}, Lcom/android/server/wm/DisplayContent;->setExitingTokensHasVisible(Z)V

    .line 574
    .end local v5    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 579
    .end local v0    # "displayNdx":I
    :cond_2d
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 580
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    .line 581
    const-wide/16 v6, -0x1

    iput-wide v6, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 582
    iput-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 583
    iput-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 584
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 586
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->clearVisibleWindowUids()V

    .line 589
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 590
    .local v6, "defaultDisplay":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    .line 591
    .local v8, "defaultInfo":Landroid/view/DisplayInfo;
    iget v9, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 592
    .local v9, "defaultDw":I
    iget v10, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 596
    .local v10, "defaultDh":I
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 598
    move/from16 v11, p1

    :try_start_60
    invoke-direct {v1, v11, v9, v10}, Lcom/android/server/wm/RootWindowContainer;->applySurfaceChangesTransaction(ZII)V
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_63} :catch_72
    .catchall {:try_start_60 .. :try_end_63} :catchall_6c

    .line 602
    :goto_63
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v12, "performLayoutAndPlaceSurfaces"

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 605
    goto :goto_7c

    .line 602
    :catchall_6c
    move-exception v0

    move v12, v4

    move-object/from16 v19, v8

    goto/16 :goto_3b9

    .line 599
    :catch_72
    move-exception v0

    move-object v12, v0

    .line 600
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_74
    const-string v12, "WindowManager"

    const-string v13, "Unhandled exception in Window Manager"

    invoke-static {v12, v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_3b5

    .line 600
    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_63

    .line 607
    :goto_7c
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->executeAfterPrepareSurfacesRunnables()V

    .line 609
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 613
    .local v0, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    iget-object v12, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v12}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v12

    if-eqz v12, :cond_b7

    .line 617
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->handleAppTransitionReadyLocked()I

    move-result v12

    .line 618
    .local v12, "layoutChanges":I
    iget v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v13, v12

    iput v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 623
    const-string v13, "Timeline"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Timeline: App_transition_ready time:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .end local v4    # "numDisplays":I
    .local v16, "numDisplays":I
    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    .end local v12    # "layoutChanges":I
    goto :goto_b9

    .line 626
    .end local v16    # "numDisplays":I
    .restart local v4    # "numDisplays":I
    :cond_b7
    move/from16 v16, v4

    .line 626
    .end local v4    # "numDisplays":I
    .restart local v16    # "numDisplays":I
    :goto_b9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->isAppAnimating()Z

    move-result v3

    if-nez v3, :cond_f3

    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 631
    iget v3, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 632
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->handleAnimatingStoppedAndTransitionLocked()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 637
    const-string v3, "Timeline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Timeline: App_transition_stopped time:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    sget-object v3, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$hanI2NjRDWRkA0SceJBpVOHCkG0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$hanI2NjRDWRkA0SceJBpVOHCkG0;

    invoke-virtual {v1, v3, v7}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 650
    :cond_f3
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 651
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v3

    .line 652
    .local v3, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v3, :cond_100

    .line 653
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RecentsAnimationController;->checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V

    .line 656
    :cond_100
    iget-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    if-eqz v4, :cond_117

    iget v4, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-nez v4, :cond_117

    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 657
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v4

    if-nez v4, :cond_117

    .line 662
    iget v4, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v4, v7

    iput v4, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 666
    :cond_117
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    .line 668
    iget-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    if-eqz v4, :cond_124

    .line 670
    iget v4, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 675
    :cond_124
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v12, 0x2

    if-eqz v4, :cond_13f

    .line 676
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v13, 0x0

    iput-boolean v13, v4, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 677
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v12, v13}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v4

    if-eqz v4, :cond_13f

    .line 679
    const/4 v2, 0x1

    .line 680
    iget v4, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 684
    :cond_13f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v4

    if-eqz v4, :cond_14a

    .line 685
    iget v4, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v4, v7

    iput v4, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 690
    :cond_14a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->handleResizingWindows()Landroid/util/ArraySet;

    move-result-object v4

    .line 694
    .local v4, "touchExcludeRegionUpdateDisplays":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/DisplayContent;>;"
    iget-boolean v13, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v13, :cond_171

    .line 695
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v13, v13, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v13, :cond_16c

    .line 696
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v14, 0x0

    iput v14, v13, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 697
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v1, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v14, v13, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 698
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v14, 0xb

    invoke-virtual {v13, v14}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 700
    :cond_16c
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 704
    :cond_171
    const/4 v13, 0x0

    .line 705
    .local v13, "wallpaperDestroyed":Z
    iget-object v14, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 707
    .local v14, "i":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .local v15, "restWins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v12, -0x1

    if-lez v14, :cond_1ea

    .line 710
    :goto_182
    add-int/2addr v14, v12

    .line 711
    iget-object v12, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WindowState;

    .line 713
    .local v12, "win":Lcom/android/server/wm/WindowState;
    iget-object v7, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_1a3

    .line 714
    iget-object v7, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->isOnTop()Z

    move-result v7

    if-nez v7, :cond_19f

    iget-object v7, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v7, v7, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    if-nez v7, :cond_1a3

    .line 715
    :cond_19f
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    goto :goto_1c6

    .line 720
    :cond_1a3
    const/4 v7, 0x0

    iput-boolean v7, v12, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 721
    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v7, v12, :cond_1b1

    .line 722
    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 724
    :cond_1b1
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v7, v12}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v7

    if-eqz v7, :cond_1be

    .line 725
    const/4 v13, 0x1

    .line 727
    :cond_1be
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 728
    iget-object v7, v12, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 729
    .end local v12    # "win":Lcom/android/server/wm/WindowState;
    :goto_1c6
    if-gtz v14, :cond_1e7

    .line 730
    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 732
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1ea

    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v7

    if-eqz v7, :cond_1ea

    .line 733
    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1ea

    .line 710
    :cond_1e7
    const/4 v7, 0x1

    const/4 v12, -0x1

    goto :goto_182

    .line 739
    :cond_1ea
    :goto_1ea
    const/4 v7, 0x0

    .line 739
    .local v7, "displayNdx":I
    :goto_1eb
    move/from16 v12, v16

    if-ge v7, v12, :cond_200

    .line 740
    .end local v16    # "numDisplays":I
    .local v12, "numDisplays":I
    iget-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 741
    .restart local v5    # "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->removeExistingTokensIfPossible()V

    .line 739
    .end local v5    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v12

    const/4 v5, 0x0

    goto :goto_1eb

    .line 744
    .end local v7    # "displayNdx":I
    :cond_200
    if-eqz v13, :cond_20b

    .line 745
    iget v5, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 746
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 749
    :cond_20b
    const/4 v5, 0x0

    .line 749
    .local v5, "displayNdx":I
    :goto_20c
    if-ge v5, v12, :cond_224

    .line 750
    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayContent;

    .line 751
    .local v7, "displayContent":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v17, v0

    iget v0, v7, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 751
    .end local v0    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .local v17, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    if-eqz v0, :cond_21f

    .line 752
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 749
    .end local v7    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_21f
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v17

    goto :goto_20c

    .line 757
    .end local v5    # "displayNdx":I
    .end local v17    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .restart local v0    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    :cond_224
    move-object/from16 v17, v0

    .line 757
    .end local v0    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .restart local v17    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 759
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Lcom/android/server/wm/Session;)V

    .line 760
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_273

    .line 761
    iget v0, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    const/4 v5, 0x0

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_252

    iget v0, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_24b

    goto :goto_252

    .line 762
    :cond_24b
    iget v0, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    invoke-direct {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->toBrightnessOverride(F)I

    move-result v0

    goto :goto_253

    :cond_252
    :goto_252
    const/4 v0, -0x1

    .line 766
    .local v0, "brightness":I
    :goto_253
    iget-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v3

    const/4 v3, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v0, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 766
    .end local v3    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .local v18, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 767
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v8

    iget-wide v7, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 767
    .end local v8    # "defaultInfo":Landroid/view/DisplayInfo;
    .local v19, "defaultInfo":Landroid/view/DisplayInfo;
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v7, 0x2

    invoke-virtual {v3, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 767
    .end local v0    # "brightness":I
    goto :goto_277

    .line 770
    .end local v18    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .end local v19    # "defaultInfo":Landroid/view/DisplayInfo;
    .restart local v3    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .restart local v8    # "defaultInfo":Landroid/view/DisplayInfo;
    :cond_273
    move-object/from16 v18, v3

    move-object/from16 v19, v8

    .line 770
    .end local v3    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .end local v8    # "defaultInfo":Landroid/view/DisplayInfo;
    .restart local v18    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .restart local v19    # "defaultInfo":Landroid/view/DisplayInfo;
    :goto_277
    iget-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    if-eq v0, v3, :cond_28b

    .line 771
    iget-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    iput-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 772
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v3, 0x6

    .line 774
    iget-boolean v5, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 772
    invoke-virtual {v0, v3, v5}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 777
    :cond_28b
    iget-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-eqz v0, :cond_2da

    .line 780
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 781
    .local v0, "displayId":I
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v3

    const/16 v5, 0x12

    if-eqz v3, :cond_2ab

    .line 782
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2ae

    .line 784
    :cond_2ab
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 789
    :goto_2ae
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    const/4 v7, -0x1

    if-eq v3, v7, :cond_2be

    .line 790
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    invoke-virtual {v1, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    goto :goto_2bf

    :cond_2be
    const/4 v3, 0x0

    .line 791
    .local v3, "vrDisplay":Lcom/android/server/wm/DisplayContent;
    :goto_2bf
    if-eqz v3, :cond_2da

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v7

    if-eqz v7, :cond_2da

    .line 792
    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v8, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v8, v8, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 793
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 797
    .end local v0    # "displayId":I
    .end local v3    # "vrDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_2da
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_2ee

    iget-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v0, :cond_2f3

    .line 798
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_2f3

    iget-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-nez v0, :cond_2f3

    .line 800
    :cond_2ee
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 803
    :cond_2f3
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 804
    .local v0, "N":I
    if-lez v0, :cond_356

    .line 805
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    array-length v3, v3

    if-ge v3, v0, :cond_30c

    .line 806
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    add-int/lit8 v5, v0, 0xa

    new-array v5, v5, [Lcom/android/server/wm/WindowState;

    iput-object v5, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 808
    :cond_30c
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 809
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 810
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v3, "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/DisplayContent;>;"
    const/4 v5, 0x0

    .line 811
    .end local v14    # "i":I
    .local v5, "i":I
    move v14, v5

    .line 811
    .end local v5    # "i":I
    .restart local v14    # "i":I
    :goto_325
    if-ge v14, v0, :cond_342

    .line 812
    iget-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    aget-object v5, v5, v14

    .line 813
    .local v5, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 814
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    .line 815
    .restart local v7    # "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v7, :cond_33f

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_33f

    .line 816
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    .end local v5    # "w":Lcom/android/server/wm/WindowState;
    .end local v7    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_33f
    add-int/lit8 v14, v14, 0x1

    goto :goto_325

    .line 820
    :cond_342
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    .line 820
    .local v5, "j":I
    :goto_348
    if-ltz v5, :cond_357

    .line 821
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayContent;

    .line 822
    .local v8, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v8, v7}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 820
    .end local v8    # "dc":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v5, v5, -0x1

    goto :goto_348

    .line 827
    .end local v3    # "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/DisplayContent;>;"
    .end local v5    # "j":I
    :cond_356
    const/4 v7, 0x1

    :cond_357
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    sub-int/2addr v3, v7

    .line 827
    .local v3, "displayNdx":I
    :goto_35e
    if-ltz v3, :cond_36e

    .line 828
    iget-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->checkCompleteDeferredRemoval()Z

    .line 827
    add-int/lit8 v3, v3, -0x1

    goto :goto_35e

    .line 831
    .end local v3    # "displayNdx":I
    :cond_36e
    if-eqz v2, :cond_378

    .line 832
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 834
    :cond_378
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService;->setFocusTaskRegionLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 835
    if-eqz v4, :cond_3aa

    .line 836
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_38f

    .line 837
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    goto :goto_390

    :cond_38f
    const/4 v5, 0x0

    :goto_390
    move-object v3, v5

    .line 838
    .local v3, "focusedDc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_395
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3aa

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayContent;

    .line 840
    .local v7, "dc":Lcom/android/server/wm/DisplayContent;
    if-eq v3, v7, :cond_3a8

    .line 841
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/wm/DisplayContent;->setTouchExcludeRegion(Lcom/android/server/wm/Task;)V

    .line 841
    .end local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    goto :goto_3a9

    .line 843
    :cond_3a8
    const/4 v8, 0x0

    :goto_3a9
    goto :goto_395

    .line 848
    .end local v3    # "focusedDc":Lcom/android/server/wm/DisplayContent;
    :cond_3aa
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 850
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 854
    return-void

    .line 602
    .end local v0    # "N":I
    .end local v12    # "numDisplays":I
    .end local v13    # "wallpaperDestroyed":Z
    .end local v14    # "i":I
    .end local v15    # "restWins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v17    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .end local v18    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .end local v19    # "defaultInfo":Landroid/view/DisplayInfo;
    .local v4, "numDisplays":I
    .local v8, "defaultInfo":Landroid/view/DisplayInfo;
    :catchall_3b5
    move-exception v0

    move v12, v4

    move-object/from16 v19, v8

    .line 602
    .end local v4    # "numDisplays":I
    .end local v8    # "defaultInfo":Landroid/view/DisplayInfo;
    .restart local v12    # "numDisplays":I
    .restart local v19    # "defaultInfo":Landroid/view/DisplayInfo;
    :goto_3b9
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v4, "performLayoutAndPlaceSurfaces"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v0
.end method

.method reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    .registers 20
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "secure"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 483
    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 484
    .local v3, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    const/4 v4, 0x0

    .line 485
    .local v4, "leakedSurface":Z
    const/4 v5, 0x0

    .line 487
    .local v5, "killedApps":Z
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v6, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v0, v7

    iget-object v6, v2, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v6, v6, Lcom/android/server/wm/Session;->mPid:I

    .line 488
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v0, v8

    const/4 v6, 0x2

    aput-object p2, v0, v6

    .line 487
    const/16 v6, 0x7918

    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 490
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 495
    .local v9, "callingIdentity":J
    :try_start_2b
    const-string v0, "WindowManager"

    const-string v6, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    move v6, v0

    .line 497
    .local v6, "numDisplays":I
    move v0, v7

    .local v0, "displayNdx":I
    :goto_3a
    if-ge v0, v6, :cond_4c

    .line 498
    iget-object v11, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->destroyLeakedSurfaces()Z

    move-result v11

    or-int/2addr v4, v11

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 501
    .end local v0    # "displayNdx":I
    :cond_4c
    if-nez v4, :cond_a6

    .line 502
    const-string v0, "WindowManager"

    const-string v11, "No leaked surfaces; killing applications!"

    invoke-static {v0, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    move-object v11, v0

    .line 504
    .local v11, "pidCandidates":Landroid/util/SparseIntArray;
    move v0, v7

    .restart local v0    # "displayNdx":I
    :goto_5c
    move v12, v0

    .end local v0    # "displayNdx":I
    .local v12, "displayNdx":I
    if-ge v12, v6, :cond_a6

    .line 505
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    new-instance v13, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$utugHDPHgMp2b3JwigOH_-Y0P1Q;

    invoke-direct {v13, v1, v11}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$utugHDPHgMp2b3JwigOH_-Y0P1Q;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/util/SparseIntArray;)V

    invoke-virtual {v0, v13, v7}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 515
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_a0

    .line 516
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    move-object v13, v0

    .line 517
    .local v13, "pids":[I
    move v0, v7

    .local v0, "i":I
    :goto_7d
    array-length v14, v13

    if-ge v0, v14, :cond_89

    .line 518
    invoke-virtual {v11, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    aput v14, v13, v0
    :try_end_86
    .catchall {:try_start_2b .. :try_end_86} :catchall_eb

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 521
    .end local v0    # "i":I
    :cond_89
    :try_start_89
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v14, "Free memory"
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_8f} :catch_9c
    .catchall {:try_start_89 .. :try_end_8f} :catchall_eb

    move/from16 v7, p3

    :try_start_91
    invoke-interface {v0, v13, v14, v7}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z

    move-result v0
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_95} :catch_9a
    .catchall {:try_start_91 .. :try_end_95} :catchall_e9

    if-eqz v0, :cond_99

    .line 522
    const/4 v0, 0x1

    .line 525
    .end local v5    # "killedApps":Z
    .local v0, "killedApps":Z
    move v5, v0

    .end local v0    # "killedApps":Z
    .restart local v5    # "killedApps":Z
    :cond_99
    goto :goto_a2

    .line 524
    :catch_9a
    move-exception v0

    goto :goto_9f

    :catch_9c
    move-exception v0

    move/from16 v7, p3

    .end local v13    # "pids":[I
    :goto_9f
    goto :goto_a2

    .line 504
    :cond_a0
    move/from16 v7, p3

    :goto_a2
    add-int/lit8 v0, v12, 0x1

    .end local v12    # "displayNdx":I
    .local v0, "displayNdx":I
    const/4 v7, 0x0

    goto :goto_5c

    .line 530
    .end local v0    # "displayNdx":I
    .end local v11    # "pidCandidates":Landroid/util/SparseIntArray;
    :cond_a6
    move/from16 v7, p3

    if-nez v4, :cond_ac

    if-eqz v5, :cond_dc

    .line 533
    :cond_ac
    :try_start_ac
    const-string v0, "WindowManager"

    const-string v11, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v0, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    if-eqz v3, :cond_d3

    .line 538
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 539
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_d3

    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 540
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_d3

    .line 541
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V
    :try_end_d3
    .catchall {:try_start_ac .. :try_end_d3} :catchall_e9

    .line 546
    :cond_d3
    :try_start_d3
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_da
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_da} :catch_db
    .catchall {:try_start_d3 .. :try_end_da} :catchall_e9

    .line 548
    goto :goto_dc

    .line 547
    :catch_db
    move-exception v0

    .line 551
    .end local v6    # "numDisplays":I
    :cond_dc
    :goto_dc
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 552
    nop

    .line 554
    if-nez v4, :cond_e7

    if-eqz v5, :cond_e5

    goto :goto_e7

    :cond_e5
    const/4 v15, 0x0

    goto :goto_e8

    :cond_e7
    :goto_e7
    move v15, v8

    :goto_e8
    return v15

    .line 551
    :catchall_e9
    move-exception v0

    goto :goto_ee

    :catchall_eb
    move-exception v0

    move/from16 v7, p3

    :goto_ee
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method removeReplacedWindows()V
    .registers 4

    .line 454
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 456
    :try_start_5
    sget-object v0, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_15

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "removeReplacedWindows"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 460
    nop

    .line 461
    return-void

    .line 458
    :catchall_15
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "removeReplacedWindows"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v0
.end method

.method scheduleAnimation()V
    .registers 2

    .line 1146
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1147
    return-void
.end method

.method setDisplayOverrideConfigurationIfNeeded(Landroid/content/res/Configuration;I)[I
    .registers 12
    .param p1, "newConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "displayId"    # I

    .line 329
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 330
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_65

    .line 334
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 335
    .local v1, "currentConfig":Landroid/content/res/Configuration;
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    move v2, v3

    .line 336
    .local v2, "configChanged":Z
    :goto_14
    const/4 v4, 0x0

    if-nez v2, :cond_18

    .line 337
    return-object v4

    .line 340
    :cond_18
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 342
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 343
    if-nez p2, :cond_28

    .line 346
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5}, Lcom/android/server/wm/RootWindowContainer;->setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;Ljava/util/List;)V

    goto :goto_2d

    .line 348
    :cond_28
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackList:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v5}, Lcom/android/server/wm/RootWindowContainer;->updateStackBoundsAfterConfigChange(ILjava/util/List;)V

    .line 351
    :goto_2d
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 352
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 354
    .local v5, "stackCount":I
    nop

    .local v3, "i":I
    :goto_39
    if-ge v3, v5, :cond_55

    .line 355
    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskStack;

    .line 359
    .local v6, "stack":Lcom/android/server/wm/TaskStack;
    iget-boolean v7, v6, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    if-nez v7, :cond_52

    .line 360
    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackIds:Ljava/util/ArrayList;

    iget v8, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 364
    .end local v3    # "i":I
    :cond_55
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_64

    :cond_5e
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackIds:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v4

    :goto_64
    return-object v4

    .line 331
    .end local v1    # "currentConfig":Landroid/content/res/Configuration;
    .end local v2    # "configChanged":Z
    .end local v5    # "stackCount":I
    :cond_65
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display not found for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setSecureSurfaceState(IZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z

    .line 421
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$3VVFoec4x74e1MMAq03gYI9kKjo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$3VVFoec4x74e1MMAq03gYI9kKjo;-><init>(IZ)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 426
    return-void
.end method

.method updateAppOpsState()V
    .registers 3

    .line 437
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0aCEx04eIvMHmZVtI4ucsiK5s9I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0aCEx04eIvMHmZVtI4ucsiK5s9I;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 440
    return-void
.end method

.method updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V
    .registers 5
    .param p2, "suspended"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 429
    .local p1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Gi6QLDM5W-SF-EH_zfgZZvIlo0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Gi6QLDM5W-SF-EH_zfgZZvIlo0;-><init>(Landroid/util/ArraySet;Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 434
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "trim"    # Z

    .line 1122
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1123
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 1124
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v2, :cond_2e

    .line 1125
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 1126
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v2, :cond_2e

    .line 1127
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 1128
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    const-wide v5, 0x20b00000002L

    invoke-virtual {v4, p1, v5, v6, p4}, Lcom/android/server/wm/DisplayContent;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 1126
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1131
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_2e
    if-nez p4, :cond_39

    .line 1132
    new-instance v2, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$vY6OsmBRhacjqomBMjSm_N8AJAs;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$vY6OsmBRhacjqomBMjSm_N8AJAs;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1136
    :cond_39
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1137
    return-void
.end method
