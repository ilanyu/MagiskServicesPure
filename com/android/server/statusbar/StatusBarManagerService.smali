.class public Lcom/android/server/statusbar/StatusBarManagerService;
.super Lcom/android/internal/statusbar/IStatusBarService$Stub;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/statusbar/StatusBarManagerService$StatusRecord;,
        Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    }
.end annotation


# static fields
.field private static final SPEW:Z = false

.field private static final TAG:Ljava/lang/String; = "StatusBarManagerService"


# instance fields
.field private volatile mBar:Lcom/android/internal/statusbar/IStatusBar;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabled1:I

.field private mDisabled2:I

.field private final mDockedStackBounds:Landroid/graphics/Rect;

.field private mDockedStackSysUiVisibility:I

.field private final mFullscreenStackBounds:Landroid/graphics/Rect;

.field private mFullscreenStackSysUiVisibility:I

.field private mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

.field private final mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

.field private mHandler:Landroid/os/Handler;

.field private mIcons:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mImeBackDisposition:I

.field private mImeToken:Landroid/os/IBinder;

.field private mImeWindowVis:I

.field private final mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mLock:Ljava/lang/Object;

.field private mMenuVisible:Z

.field private mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field private mShowImeSwitcher:Z

.field mStatusRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/statusbar/StatusBarManagerService$StatusRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSysUiVisToken:Landroid/os/IBinder;

.field private mSystemUiVisibility:I

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 166
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;-><init>()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    .line 80
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    .line 82
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 84
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mFullscreenStackBounds:Landroid/graphics/Rect;

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 89
    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisible:Z

    .line 90
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeWindowVis:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    .line 177
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerService$1;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 417
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerService$2;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    .line 1280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mStatusRecords:Ljava/util/ArrayList;

    .line 167
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 170
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 171
    const-class v0, Lcom/android/server/policy/GlobalActionsProvider;

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/notification/NotificationDelegate;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 63
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/notification/NotificationDelegate;)Lcom/android/server/notification/NotificationDelegate;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationDelegate;

    .line 63
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 63
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/IStatusBar;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"    # Lcom/android/internal/statusbar/IStatusBar;

    .line 63
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/statusbar/StatusBarManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"    # Z

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->topAppWindowChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/statusbar/StatusBarManagerService;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V
    .registers 8
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Landroid/graphics/Rect;
    .param p6, "x6"    # Landroid/graphics/Rect;
    .param p7, "x7"    # Ljava/lang/String;

    .line 63
    invoke-direct/range {p0 .. p7}, Lcom/android/server/statusbar/StatusBarManagerService;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 63
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/statusbar/StatusBarManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"    # I

    .line 63
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 63
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/statusbar/StatusBarManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 63
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 63
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;)Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"    # Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    .line 63
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 63
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V

    return-void
.end method

.method private disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "whichFlag"    # I

    .line 650
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/statusbar/StatusBarManagerService;->manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 653
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v0

    .line 654
    .local v0, "net1":I
    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v1

    .line 655
    .local v1, "net2":I
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    if-ne v0, v2, :cond_19

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    if-eq v1, v2, :cond_32

    .line 656
    :cond_19
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    .line 657
    iput v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    .line 658
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$3;

    invoke-direct {v3, p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService$3;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 663
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v2, :cond_32

    .line 665
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->disable(II)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31

    .line 667
    goto :goto_32

    .line 666
    :catch_31
    move-exception v2

    .line 670
    :cond_32
    :goto_32
    return-void
.end method

.method private enforceExpandStatusBar()V
    .registers 4

    .line 848
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    return-void
.end method

.method private enforceStatusBar()V
    .registers 4

    .line 843
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method private enforceStatusBarOrShell()V
    .registers 3

    .line 836
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_9

    .line 837
    return-void

    .line 839
    :cond_9
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 840
    return-void
.end method

.method private enforceStatusBarService()V
    .registers 4

    .line 853
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    return-void
.end method

.method private static final getUiContext()Landroid/content/Context;
    .registers 1

    .line 1264
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$notifyBarAttachChanged$0(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 3

    .line 903
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    if-nez v0, :cond_5

    return-void

    .line 904
    :cond_5
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-interface {v0, v1}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsAvailableChanged(Z)V

    .line 905
    return-void
.end method

.method static synthetic lambda$reboot$2(Z)V
    .registers 4
    .param p0, "safeMode"    # Z

    .line 976
    if-eqz p0, :cond_b

    .line 977
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V

    goto :goto_16

    .line 979
    :cond_b
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "userrequested"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 982
    :goto_16
    return-void
.end method

.method static synthetic lambda$shutdown$1()V
    .registers 3

    .line 959
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "userrequested"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private notifyBarAttachChanged()V
    .registers 3

    .line 902
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$yJtT-4wu2t7bMtUpZNqcLBShMU8;

    invoke-direct {v1, p0}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$yJtT-4wu2t7bMtUpZNqcLBShMU8;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 906
    return-void
.end method

.method private setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V
    .registers 15
    .param p1, "vis"    # I
    .param p2, "fullscreenStackVis"    # I
    .param p3, "dockedStackVis"    # I
    .param p4, "mask"    # I
    .param p5, "fullscreenBounds"    # Landroid/graphics/Rect;
    .param p6, "dockedBounds"    # Landroid/graphics/Rect;
    .param p7, "cause"    # Ljava/lang/String;

    .line 793
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 797
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 798
    :try_start_6
    invoke-direct/range {p0 .. p6}, Lcom/android/server/statusbar/StatusBarManagerService;->updateUiVisibilityLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 800
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/high16 v1, 0x3ff0000

    and-int v3, p1, v1

    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 805
    monitor-exit v0

    .line 806
    return-void

    .line 805
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private topAppWindowChanged(Z)V
    .registers 5
    .param p1, "menuVisible"    # Z

    .line 736
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 740
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 741
    :try_start_6
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisible:Z

    .line 742
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 752
    monitor-exit v0

    .line 753
    return-void

    .line 752
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private updateUiVisibilityLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 23
    .param p1, "vis"    # I
    .param p2, "fullscreenStackVis"    # I
    .param p3, "dockedStackVis"    # I
    .param p4, "mask"    # I
    .param p5, "fullscreenBounds"    # Landroid/graphics/Rect;
    .param p6, "dockedBounds"    # Landroid/graphics/Rect;

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p5

    .line 811
    move-object/from16 v13, p6

    iget v0, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    if-ne v0, v9, :cond_28

    iget v0, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mFullscreenStackSysUiVisibility:I

    if-ne v0, v10, :cond_28

    iget v0, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mDockedStackSysUiVisibility:I

    if-ne v0, v11, :cond_28

    iget-object v0, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mFullscreenStackBounds:Landroid/graphics/Rect;

    .line 814
    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 815
    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 816
    :cond_28
    iput v9, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    .line 817
    iput v10, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mFullscreenStackSysUiVisibility:I

    .line 818
    iput v11, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mDockedStackSysUiVisibility:I

    .line 819
    iget-object v0, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mFullscreenStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 820
    iget-object v0, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 821
    iget-object v14, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/server/statusbar/StatusBarManagerService$6;

    move-object v0, v15

    move-object v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move/from16 v5, p4

    move-object v6, v12

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService$6;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    :cond_4b
    return-void
.end method


# virtual methods
.method public addTile(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 491
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 493
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 495
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->addQsTile(Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 497
    goto :goto_e

    .line 496
    :catch_d
    move-exception v0

    .line 499
    :cond_e
    :goto_e
    return-void
.end method

.method public clearNotificationEffects()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 927
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 928
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 930
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->clearEffects()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 932
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 933
    nop

    .line 934
    return-void

    .line 932
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 513
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 515
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 517
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->clickQsTile(Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 519
    goto :goto_e

    .line 518
    :catch_d
    move-exception v0

    .line 521
    :cond_e
    :goto_e
    return-void
.end method

.method public collapsePanels()V
    .registers 2

    .line 456
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 458
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 460
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 462
    goto :goto_e

    .line 461
    :catch_d
    move-exception v0

    .line 464
    :cond_e
    :goto_e
    return-void
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .line 607
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 608
    return-void
.end method

.method public disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .line 627
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 628
    return-void
.end method

.method public disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 12
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 638
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 640
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    const/4 v6, 0x2

    move-object v1, p0

    move v2, p4

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    :try_start_c
    invoke-direct/range {v1 .. v6}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 642
    monitor-exit v0

    .line 643
    return-void

    .line 642
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_11

    throw v1
.end method

.method public disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 12
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 612
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 614
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    const/4 v6, 0x1

    move-object v1, p0

    move v2, p4

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    :try_start_c
    invoke-direct/range {v1 .. v6}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 616
    monitor-exit v0

    .line 617
    return-void

    .line 616
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1234
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "StatusBarManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1236
    :cond_b
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1237
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisabled1=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisabled2=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1240
    .local v1, "N":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mDisableRecords.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1241
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5d
    if-ge v2, v1, :cond_86

    .line 1242
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 1243
    .local v3, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1241
    .end local v3    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 1245
    .end local v2    # "i":I
    :cond_86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mCurrentUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1246
    const-string v2, "  mIcons="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1247
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ab
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ea

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1248
    .local v3, "slot":Ljava/lang/String;
    const-string v4, "    "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1250
    const-string v4, " -> "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1251
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 1252
    .local v4, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1253
    iget-object v5, v4, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e6

    .line 1254
    const-string v5, " \""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1255
    iget-object v5, v4, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1256
    const-string v5, "\""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1258
    :cond_e6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1259
    .end local v3    # "slot":Ljava/lang/String;
    .end local v4    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_ab

    .line 1260
    .end local v1    # "N":I
    :cond_ea
    monitor-exit v0

    .line 1261
    return-void

    .line 1260
    :catchall_ec
    move-exception v1

    monitor-exit v0
    :try_end_ee
    .catchall {:try_start_e .. :try_end_ee} :catchall_ec

    throw v1
.end method

.method public expandNotificationsPanel()V
    .registers 2

    .line 444
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 446
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 448
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandNotificationsPanel()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 450
    goto :goto_e

    .line 449
    :catch_d
    move-exception v0

    .line 452
    :cond_e
    :goto_e
    return-void
.end method

.method public expandSettingsPanel(Ljava/lang/String;)V
    .registers 3
    .param p1, "subPanel"    # Ljava/lang/String;

    .line 480
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 482
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 484
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandSettingsPanel(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 486
    goto :goto_e

    .line 485
    :catch_d
    move-exception v0

    .line 488
    :cond_e
    :goto_e
    return-void
.end method

.method gatherDisableActionsLocked(II)I
    .registers 8
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .line 1217
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1219
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1220
    .local v1, "net":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_1e

    .line 1221
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 1222
    .local v3, "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v4, p1, :cond_1b

    .line 1223
    invoke-virtual {v3, p2}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->getFlags(I)I

    move-result v4

    or-int/2addr v1, v4

    .line 1220
    .end local v3    # "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1226
    .end local v2    # "i":I
    :cond_1e
    return v1
.end method

.method public getStatusBarIcons()[Ljava/lang/String;
    .registers 3

    .line 1164
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleSystemKey(I)V
    .registers 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 527
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 529
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->handleSystemKey(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 531
    goto :goto_e

    .line 530
    :catch_d
    move-exception v0

    .line 533
    :cond_e
    :goto_e
    return-void
.end method

.method public hideFingerprintDialog()V
    .registers 2

    .line 597
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_b

    .line 599
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->hideFingerprintDialog()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 601
    goto :goto_b

    .line 600
    :catch_a
    move-exception v0

    .line 603
    :cond_b
    :goto_b
    return-void
.end method

.method manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "which"    # I

    .line 1179
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1180
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1182
    .local v1, "record":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_9
    if-ge v3, v0, :cond_20

    .line 1183
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 1184
    .local v4, "r":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget-object v5, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v5, p3, :cond_1d

    iget v5, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v5, p1, :cond_1d

    .line 1185
    move-object v1, v4

    .line 1186
    goto :goto_20

    .line 1182
    .end local v4    # "r":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1191
    :cond_20
    :goto_20
    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-nez v4, :cond_33

    .line 1192
    if-eqz v1, :cond_32

    .line 1193
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1194
    iget-object v4, v1, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v4, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1196
    :cond_32
    return-void

    .line 1200
    :cond_33
    if-eqz v1, :cond_49

    .line 1201
    invoke-virtual {v1, p2, p5, p4}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->setFlags(IILjava/lang/String;)V

    .line 1202
    invoke-virtual {v1}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1203
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1204
    iget-object v4, v1, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v4, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1206
    :cond_48
    return-void

    .line 1210
    :cond_49
    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;)V

    move-object v1, v2

    .line 1211
    invoke-virtual {v1, p2, p5, p4}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->setFlags(IILjava/lang/String;)V

    .line 1212
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    return-void
.end method

.method manageStatusListLocked(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 10
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .line 1288
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mStatusRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1289
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1291
    .local v1, "tok":Lcom/android/server/statusbar/StatusBarManagerService$StatusRecord;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_9
    if-ge v3, v0, :cond_1c

    .line 1292
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mStatusRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/statusbar/StatusBarManagerService$StatusRecord;

    .line 1293
    .local v4, "t":Lcom/android/server/statusbar/StatusBarManagerService$StatusRecord;
    iget-object v5, v4, Lcom/android/server/statusbar/StatusBarManagerService$StatusRecord;->token:Landroid/os/IBinder;

    if-ne v5, p2, :cond_19

    .line 1294
    move-object v1, v4

    .line 1295
    goto :goto_1c

    .line 1291
    .end local v4    # "t":Lcom/android/server/statusbar/StatusBarManagerService$StatusRecord;
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1298
    :cond_1c
    :goto_1c
    if-eqz p1, :cond_3e

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-nez v4, :cond_25

    goto :goto_3e

    .line 1304
    :cond_25
    if-nez v1, :cond_39

    .line 1305
    new-instance v4, Lcom/android/server/statusbar/StatusBarManagerService$StatusRecord;

    invoke-direct {v4, p0}, Lcom/android/server/statusbar/StatusBarManagerService$StatusRecord;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    move-object v1, v4

    .line 1307
    :try_start_2d
    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_37

    .line 1311
    nop

    .line 1312
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mStatusRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 1309
    :catch_37
    move-exception v2

    .line 1310
    .local v2, "ex":Landroid/os/RemoteException;
    return-void

    .line 1314
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_39
    :goto_39
    iput-object p2, v1, Lcom/android/server/statusbar/StatusBarManagerService$StatusRecord;->token:Landroid/os/IBinder;

    .line 1315
    iput-object p3, v1, Lcom/android/server/statusbar/StatusBarManagerService$StatusRecord;->pkg:Ljava/lang/String;

    goto :goto_4a

    .line 1299
    :cond_3e
    :goto_3e
    if-eqz v1, :cond_4a

    .line 1300
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mStatusRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1301
    iget-object v4, v1, Lcom/android/server/statusbar/StatusBarManagerService$StatusRecord;->token:Landroid/os/IBinder;

    invoke-interface {v4, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1317
    :cond_4a
    :goto_4a
    return-void
.end method

.method public onClearAllNotifications(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 1145
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1146
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1147
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1148
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1150
    .local v2, "identity":J
    :try_start_f
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v0, v1, p1}, Lcom/android/server/notification/NotificationDelegate;->onClearAll(III)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 1152
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1153
    nop

    .line 1154
    return-void

    .line 1152
    :catchall_19
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onFingerprintAuthenticated()V
    .registers 2

    .line 567
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_b

    .line 569
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->onFingerprintAuthenticated()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 571
    goto :goto_b

    .line 570
    :catch_a
    move-exception v0

    .line 573
    :cond_b
    :goto_b
    return-void
.end method

.method public onFingerprintError(Ljava/lang/String;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/String;

    .line 587
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_b

    .line 589
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onFingerprintError(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 591
    goto :goto_b

    .line 590
    :catch_a
    move-exception v0

    .line 593
    :cond_b
    :goto_b
    return-void
.end method

.method public onFingerprintHelp(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 577
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_b

    .line 579
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onFingerprintHelp(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 581
    goto :goto_b

    .line 580
    :catch_a
    move-exception v0

    .line 583
    :cond_b
    :goto_b
    return-void
.end method

.method public onGlobalActionsHidden()V
    .registers 4

    .line 1002
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1003
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1005
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_19

    if-nez v2, :cond_f

    .line 1008
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1005
    return-void

    .line 1006
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    invoke-interface {v2}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsDismissed()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 1008
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1009
    nop

    .line 1010
    return-void

    .line 1008
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onGlobalActionsShown()V
    .registers 4

    .line 990
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 991
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 993
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_19

    if-nez v2, :cond_f

    .line 996
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 993
    return-void

    .line 994
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    invoke-interface {v2}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsShown()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 996
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 997
    nop

    .line 998
    return-void

    .line 996
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationActionClick(Ljava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "actionIndex"    # I
    .param p3, "nv"    # Lcom/android/internal/statusbar/NotificationVisibility;

    .line 1027
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1028
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1029
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1030
    .local v7, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v8, v0

    .line 1032
    .local v8, "identity":J
    :try_start_10
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move v1, v6

    move v2, v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/notification/NotificationDelegate;->onNotificationActionClick(IILjava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1f

    .line 1035
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1036
    nop

    .line 1037
    return-void

    .line 1035
    :catchall_1f
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationClear(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 24
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "dismissalSurface"    # I
    .param p7, "nv"    # Lcom/android/internal/statusbar/NotificationVisibility;

    .line 1058
    invoke-direct/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1059
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1060
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1061
    .local v12, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v13, v0

    .line 1063
    .local v13, "identity":J
    move-object/from16 v15, p0

    :try_start_12
    iget-object v1, v15, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move v2, v11

    move v3, v12

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v1 .. v10}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClear(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_2c

    .line 1066
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1067
    nop

    .line 1068
    return-void

    .line 1066
    :catchall_2c
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "nv"    # Lcom/android/internal/statusbar/NotificationVisibility;

    .line 1014
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1015
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1016
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1017
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1019
    .local v2, "identity":J
    :try_start_f
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v0, v1, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClick(IILjava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 1021
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1022
    nop

    .line 1023
    return-void

    .line 1021
    :catchall_19
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onNotificationDirectReplied(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1099
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1102
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationDirectReplied(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1104
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1105
    nop

    .line 1106
    return-void

    .line 1104
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 24
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "uid"    # I
    .param p5, "initialPid"    # I
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .line 1042
    invoke-direct/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1043
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1044
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1045
    .local v12, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v13, v0

    .line 1048
    .local v13, "identity":J
    move-object/from16 v15, p0

    :try_start_12
    iget-object v1, v15, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move v2, v11

    move v3, v12

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v1 .. v10}, Lcom/android/server/notification/NotificationDelegate;->onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_2c

    .line 1051
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1052
    nop

    .line 1053
    return-void

    .line 1051
    :catchall_2c
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1087
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1088
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1090
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/server/notification/NotificationDelegate;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1093
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1094
    nop

    .line 1095
    return-void

    .line 1093
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationSettingsViewed(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1134
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1137
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationSettingsViewed(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1139
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1140
    nop

    .line 1141
    return-void

    .line 1139
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationSmartRepliesAdded(Ljava/lang/String;I)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "replyCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1111
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1112
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1114
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationSmartRepliesAdded(Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1117
    nop

    .line 1118
    return-void

    .line 1116
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationSmartReplySent(Ljava/lang/String;I)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "replyIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1123
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1124
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1126
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationSmartReplySent(Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1128
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1129
    nop

    .line 1130
    return-void

    .line 1128
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 6
    .param p1, "newlyVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .param p2, "noLongerVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1074
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1075
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1077
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1080
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1081
    nop

    .line 1082
    return-void

    .line 1080
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onPanelHidden()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 938
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 940
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->getInstance()Lcom/android/server/statusbar/StatusBarManagerServiceInjector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->boostSystemUI(Z)V

    .line 941
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 943
    .local v0, "identity":J
    :try_start_f
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->onPanelHidden()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 945
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 946
    nop

    .line 947
    return-void

    .line 945
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onPanelRevealed(ZI)V
    .registers 6
    .param p1, "clearNotificationEffects"    # Z
    .param p2, "numItems"    # I

    .line 914
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 916
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->getInstance()Lcom/android/server/statusbar/StatusBarManagerServiceInjector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->boostSystemUI(Z)V

    .line 917
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 919
    .local v0, "identity":J
    :try_start_f
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onPanelRevealed(ZI)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 921
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 922
    nop

    .line 923
    return-void

    .line 921
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1159
    new-instance v0, Lcom/android/server/statusbar/StatusBarShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/statusbar/StatusBarShellCommand;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/statusbar/StatusBarShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1161
    return-void
.end method

.method public reboot(Z)V
    .registers 6
    .param p1, "safeMode"    # Z

    .line 971
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 972
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 974
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$r43hbhDcFisIPH512W_AYyyIFTg;

    invoke-direct {v3, p1}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$r43hbhDcFisIPH512W_AYyyIFTg;-><init>(Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_16

    .line 984
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 985
    nop

    .line 986
    return-void

    .line 984
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Ljava/util/List;Ljava/util/List;[ILjava/util/List;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 13
    .param p1, "bar"    # Lcom/android/internal/statusbar/IStatusBar;
    .param p4, "switches"    # [I
    .param p6, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p7, "dockedStackBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;[I",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 864
    .local p2, "iconSlots":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "iconList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    .local p5, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 866
    const-string v0, "StatusBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerStatusBar bar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 869
    const/4 v0, 0x0

    :try_start_1d
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$7;

    invoke-direct {v2, p0}, Lcom/android/server/statusbar/StatusBarManagerService$7;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2b} :catch_2c

    .line 877
    goto :goto_2d

    .line 876
    :catch_2c
    move-exception v1

    .line 878
    :goto_2d
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V

    .line 879
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 880
    :try_start_33
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 881
    .local v3, "slot":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    .end local v3    # "slot":Ljava/lang/String;
    goto :goto_3d

    .line 884
    :cond_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_33 .. :try_end_59} :catchall_a5

    .line 885
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 886
    :try_start_5c
    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v1

    aput v1, p4, v0

    .line 887
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    aput v0, p4, v3

    .line 888
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisible:Z

    const/4 v1, 0x2

    aput v0, p4, v1

    .line 889
    const/4 v0, 0x3

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeWindowVis:I

    aput v3, p4, v0

    .line 890
    const/4 v0, 0x4

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeBackDisposition:I

    aput v3, p4, v0

    .line 891
    const/4 v0, 0x5

    iget-boolean v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mShowImeSwitcher:Z

    aput v3, p4, v0

    .line 892
    const/4 v0, 0x6

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v1

    aput v1, p4, v0

    .line 893
    const/4 v0, 0x7

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mFullscreenStackSysUiVisibility:I

    aput v1, p4, v0

    .line 894
    const/16 v0, 0x8

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDockedStackSysUiVisibility:I

    aput v1, p4, v0

    .line 895
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mFullscreenStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 897
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 898
    monitor-exit v2

    .line 899
    return-void

    .line 898
    :catchall_a2
    move-exception v0

    monitor-exit v2
    :try_end_a4
    .catchall {:try_start_5c .. :try_end_a4} :catchall_a2

    throw v0

    .line 884
    :catchall_a5
    move-exception v0

    :try_start_a6
    monitor-exit v1
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v0
.end method

.method public remTile(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 502
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 504
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 506
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->remQsTile(Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 508
    goto :goto_e

    .line 507
    :catch_d
    move-exception v0

    .line 510
    :cond_e
    :goto_e
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .registers 4
    .param p1, "slot"    # Ljava/lang/String;

    .line 716
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 718
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 719
    :try_start_6
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_18

    if-eqz v1, :cond_16

    .line 723
    :try_start_f
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 725
    goto :goto_16

    .line 724
    :catch_15
    move-exception v1

    .line 727
    :cond_16
    :goto_16
    :try_start_16
    monitor-exit v0

    .line 728
    return-void

    .line 727
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 15
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPackage"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .param p4, "iconLevel"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;

    .line 675
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 677
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 678
    :try_start_6
    new-instance v8, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    move-object v1, v8

    .line 681
    .local v1, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_26

    if-eqz v2, :cond_24

    .line 685
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_23
    .catchall {:try_start_1d .. :try_end_22} :catchall_26

    .line 687
    goto :goto_24

    .line 686
    :catch_23
    move-exception v2

    .line 689
    .end local v1    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_24
    :goto_24
    :try_start_24
    monitor-exit v0

    .line 690
    return-void

    .line 689
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visibility"    # Z

    .line 694
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 696
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 697
    :try_start_6
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 698
    .local v1, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v1, :cond_12

    .line 699
    monitor-exit v0

    return-void

    .line 701
    :cond_12
    iget-boolean v2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eq v2, p2, :cond_23

    .line 702
    iput-boolean p2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 704
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_25

    if-eqz v2, :cond_23

    .line 706
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_22
    .catchall {:try_start_1c .. :try_end_21} :catchall_25

    .line 708
    goto :goto_23

    .line 707
    :catch_22
    move-exception v2

    .line 711
    .end local v1    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_23
    :goto_23
    :try_start_23
    monitor-exit v0

    .line 712
    return-void

    .line 711
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .registers 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .line 758
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 764
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 768
    :try_start_6
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeWindowVis:I

    .line 769
    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeBackDisposition:I

    .line 770
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    .line 771
    iput-boolean p4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mShowImeSwitcher:Z

    .line 772
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/statusbar/StatusBarManagerService$5;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService$5;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/os/IBinder;IIZ)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 782
    monitor-exit v0

    .line 783
    return-void

    .line 782
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public setStatus(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "ext"    # Landroid/os/Bundle;

    .line 1322
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1323
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService;->manageStatusListLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 1324
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_13

    if-eqz v1, :cond_11

    .line 1326
    :try_start_a
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1, p3, p4}, Lcom/android/internal/statusbar/IStatusBar;->setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    .line 1328
    goto :goto_11

    .line 1327
    :catch_10
    move-exception v1

    .line 1330
    :cond_11
    :goto_11
    :try_start_11
    monitor-exit v0

    .line 1331
    return-void

    .line 1330
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public setSystemUiVisibility(IILjava/lang/String;)V
    .registers 12
    .param p1, "vis"    # I
    .param p2, "mask"    # I
    .param p3, "cause"    # Ljava/lang/String;

    .line 787
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mFullscreenStackBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDockedStackBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method public showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "receiver"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 557
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_b

    .line 559
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 561
    goto :goto_b

    .line 560
    :catch_a
    move-exception v0

    .line 563
    :cond_b
    :goto_b
    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .registers 3
    .param p1, "entering"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_b

    .line 539
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showPinningEnterExitToast(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 541
    goto :goto_b

    .line 540
    :catch_a
    move-exception v0

    .line 543
    :cond_b
    :goto_b
    return-void
.end method

.method public showPinningEscapeToast()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_b

    .line 549
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->showPinningEscapeToast()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 551
    goto :goto_b

    .line 550
    :catch_a
    move-exception v0

    .line 553
    :cond_b
    :goto_b
    return-void
.end method

.method public shutdown()V
    .registers 5

    .line 954
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 955
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 958
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$izMbpkX9bmZwnjh3sH07yuoJPNY;->INSTANCE:Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$izMbpkX9bmZwnjh3sH07yuoJPNY;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_13

    .line 962
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 963
    nop

    .line 964
    return-void

    .line 962
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public togglePanel()V
    .registers 2

    .line 468
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 470
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 472
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->togglePanel()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 474
    goto :goto_e

    .line 473
    :catch_d
    move-exception v0

    .line 476
    :cond_e
    :goto_e
    return-void
.end method
