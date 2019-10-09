.class Lcom/android/server/wm/TaskSnapshotSurface;
.super Ljava/lang/Object;
.source "TaskSnapshotSurface.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;,
        Lcom/android/server/wm/TaskSnapshotSurface$Window;
    }
.end annotation


# static fields
.field private static final FLAG_INHERIT_EXCLUDES:I = 0x3186e038

.field private static final MSG_REPORT_DRAW:I = 0x0

.field private static final PRIVATE_FLAG_INHERITS:I = 0x20000

.field private static final SIZE_MISMATCH_MINIMUM_TIME_MS:J = 0x1c2L

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TITLE_FORMAT:Ljava/lang/String; = "SnapshotStartingWindow for taskId=%s"

.field private static sHandler:Landroid/os/Handler;


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mChildSurfaceControl:Landroid/view/SurfaceControl;

.field private final mContentInsets:Landroid/graphics/Rect;

.field private final mFrame:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private mHasDrawn:Z

.field private final mOrientationOnCreation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSession:Landroid/view/IWindowSession;

.field private mShownTime:J

.field private mSizeMismatch:Z

.field private mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private final mStatusBarColor:I

.field private final mSurface:Landroid/view/Surface;

.field final mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mTaskBounds:Landroid/graphics/Rect;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 414
    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskSnapshotSurface$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotSurface$Window;Landroid/view/Surface;Landroid/app/ActivityManager$TaskSnapshot;Ljava/lang/CharSequence;IIIIIILandroid/graphics/Rect;I)V
    .registers 28
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "window"    # Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .param p3, "surface"    # Landroid/view/Surface;
    .param p4, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "backgroundColor"    # I
    .param p7, "statusBarColor"    # I
    .param p8, "navigationBarColor"    # I
    .param p9, "sysUiVis"    # I
    .param p10, "windowFlags"    # I
    .param p11, "windowPrivateFlags"    # I
    .param p12, "taskBounds"    # Landroid/graphics/Rect;
    .param p13, "currentOrientation"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    .line 233
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mStableInsets:Landroid/graphics/Rect;

    .line 117
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mContentInsets:Landroid/graphics/Rect;

    .line 118
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    .line 125
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 234
    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 235
    new-instance v2, Landroid/os/Handler;

    iget-object v3, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mHandler:Landroid/os/Handler;

    .line 236
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    .line 237
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    .line 238
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    .line 239
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 240
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    .line 241
    iget-object v6, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz p6, :cond_4f

    move/from16 v7, p6

    goto :goto_50

    :cond_4f
    const/4 v7, -0x1

    :goto_50
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    move-object/from16 v6, p12

    iput-object v6, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTaskBounds:Landroid/graphics/Rect;

    .line 243
    new-instance v13, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    move-object v7, v13

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p9

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;-><init>(IIIII)V

    iput-object v13, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    .line 245
    move/from16 v7, p7

    iput v7, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mStatusBarColor:I

    .line 246
    move/from16 v8, p13

    iput v8, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mOrientationOnCreation:I

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskSnapshotSurface;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskSnapshotSurface;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 82
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHasDrawn:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskSnapshotSurface;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 82
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->reportDrawn()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskSnapshotSurface;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 82
    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mOrientationOnCreation:I

    return v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .line 82
    sget-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AppWindowToken;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/wm/TaskSnapshotSurface;
    .registers 64
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    move-object/from16 v1, p1

    .line 133
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object v15, v0

    .line 134
    .local v15, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-direct {v0}, Lcom/android/server/wm/TaskSnapshotSurface$Window;-><init>()V

    move-object v14, v0

    .line 135
    .local v14, "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v13

    .line 136
    .local v13, "session":Landroid/view/IWindowSession;
    invoke-virtual {v14, v13}, Lcom/android/server/wm/TaskSnapshotSurface$Window;->setSession(Landroid/view/IWindowSession;)V

    .line 137
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    move-object/from16 v37, v0

    .line 138
    .local v37, "surface":Landroid/view/Surface;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 139
    .local v9, "tmpRect":Landroid/graphics/Rect;
    new-instance v12, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v12}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    .line 140
    .local v12, "tmpCutout":Landroid/view/DisplayCutout$ParcelableWrapper;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v0

    .line 142
    .local v11, "tmpFrame":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    .line 143
    .local v10, "tmpContentInsets":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v0

    .line 144
    .local v8, "tmpStableInsets":Landroid/graphics/Rect;
    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    move-object/from16 v32, v0

    .line 145
    .local v32, "tmpMergedConfiguration":Landroid/util/MergedConfiguration;
    const/4 v2, -0x1

    .line 146
    .local v2, "backgroundColor":I
    const/4 v3, 0x0

    .line 147
    .local v3, "statusBarColor":I
    const/4 v4, 0x0

    .line 152
    .local v4, "navigationBarColor":I
    move-object/from16 v7, p0

    iget-object v5, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 154
    .local v0, "mainWindow":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_289

    .line 155
    .local v6, "task":Lcom/android/server/wm/Task;
    const/16 v16, 0x0

    if-nez v6, :cond_ab

    .line 156
    move/from16 v48, v2

    :try_start_58
    const-string v2, "WindowManager"
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_99

    .end local v2    # "backgroundColor":I
    .local v48, "backgroundColor":I
    move/from16 v49, v3

    :try_start_5c
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "statusBarColor":I
    .local v49, "statusBarColor":I
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_87

    move/from16 v50, v4

    :try_start_63
    const-string v4, "TaskSnapshotSurface.create: Failed to find task for token="

    .end local v4    # "navigationBarColor":I
    .local v50, "navigationBarColor":I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    monitor-exit v5
    :try_end_73
    .catchall {:try_start_63 .. :try_end_73} :catchall_77

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    .line 200
    .end local v0    # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v6    # "task":Lcom/android/server/wm/Task;
    :catchall_77
    move-exception v0

    move-object/from16 v59, v13

    move-object v4, v14

    move-object v7, v15

    move/from16 v2, v48

    .end local v13    # "session":Landroid/view/IWindowSession;
    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v48    # "backgroundColor":I
    .end local v49    # "statusBarColor":I
    .restart local v2    # "backgroundColor":I
    .restart local v3    # "statusBarColor":I
    .local v4, "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .local v7, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v8, "tmpFrame":Landroid/graphics/Rect;
    .local v11, "tmpStableInsets":Landroid/graphics/Rect;
    .local v59, "session":Landroid/view/IWindowSession;
    :goto_7e
    move/from16 v3, v49

    :goto_80
    move-object/from16 v60, v11

    move-object v11, v8

    move-object/from16 v8, v60

    goto/16 :goto_299

    .end local v2    # "backgroundColor":I
    .end local v3    # "statusBarColor":I
    .end local v7    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v50    # "navigationBarColor":I
    .end local v59    # "session":Landroid/view/IWindowSession;
    .local v4, "navigationBarColor":I
    .local v8, "tmpStableInsets":Landroid/graphics/Rect;
    .local v11, "tmpFrame":Landroid/graphics/Rect;
    .restart local v13    # "session":Landroid/view/IWindowSession;
    .restart local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v48    # "backgroundColor":I
    .restart local v49    # "statusBarColor":I
    :catchall_87
    move-exception v0

    move/from16 v50, v4

    move-object/from16 v59, v13

    move-object v4, v14

    move-object v7, v15

    move/from16 v2, v48

    move/from16 v3, v49

    move-object/from16 v60, v11

    move-object v11, v8

    move-object/from16 v8, v60

    .end local v4    # "navigationBarColor":I
    .restart local v50    # "navigationBarColor":I
    goto/16 :goto_299

    .end local v49    # "statusBarColor":I
    .end local v50    # "navigationBarColor":I
    .restart local v3    # "statusBarColor":I
    .restart local v4    # "navigationBarColor":I
    :catchall_99
    move-exception v0

    move/from16 v49, v3

    move/from16 v50, v4

    move-object/from16 v59, v13

    move-object v4, v14

    move-object v7, v15

    move/from16 v2, v48

    move-object/from16 v60, v11

    move-object v11, v8

    move-object/from16 v8, v60

    .end local v3    # "statusBarColor":I
    .end local v4    # "navigationBarColor":I
    .restart local v49    # "statusBarColor":I
    .restart local v50    # "navigationBarColor":I
    goto/16 :goto_299

    .line 160
    .end local v48    # "backgroundColor":I
    .end local v49    # "statusBarColor":I
    .end local v50    # "navigationBarColor":I
    .restart local v0    # "mainWindow":Lcom/android/server/wm/WindowState;
    .restart local v2    # "backgroundColor":I
    .restart local v3    # "statusBarColor":I
    .restart local v4    # "navigationBarColor":I
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    :cond_ab
    move/from16 v48, v2

    move/from16 v49, v3

    move/from16 v50, v4

    .end local v2    # "backgroundColor":I
    .end local v3    # "statusBarColor":I
    .end local v4    # "navigationBarColor":I
    .restart local v48    # "backgroundColor":I
    .restart local v49    # "statusBarColor":I
    .restart local v50    # "navigationBarColor":I
    :try_start_b1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopFullscreenAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v2
    :try_end_b9
    .catchall {:try_start_b1 .. :try_end_b9} :catchall_27a

    .line 161
    .local v2, "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v2, :cond_d6

    .line 162
    :try_start_bb
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TaskSnapshotSurface.create: Failed to find top fullscreen for task="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    monitor-exit v5
    :try_end_d2
    .catchall {:try_start_bb .. :try_end_d2} :catchall_77

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    .line 166
    :cond_d6
    :try_start_d6
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTopFullscreenWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 167
    .local v3, "topFullscreenWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_24c

    if-nez v3, :cond_ed

    .line 168
    move-object/from16 v54, v0

    move-object/from16 v55, v2

    move-object/from16 v59, v13

    move-object v4, v14

    move-object v7, v15

    move-object/from16 v60, v11

    move-object v11, v8

    move-object/from16 v8, v60

    goto/16 :goto_259

    .line 172
    :cond_ed
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v4

    move v7, v4

    .line 173
    .local v7, "sysUiVis":I
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v52, v4

    .line 174
    .local v52, "windowFlags":I
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v53, v4

    .line 176
    .local v53, "windowPrivateFlags":I
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v4, v15, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 177
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 178
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 179
    const/4 v4, 0x3

    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getFormat()I

    move-result v4

    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 181
    const v4, -0x3186e039

    and-int v4, v52, v4

    or-int/lit8 v4, v4, 0x8

    or-int/lit8 v4, v4, 0x10

    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 184
    const/high16 v4, 0x20000

    and-int v4, v53, v4

    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 185
    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    iput-object v4, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 186
    const/4 v4, -0x1

    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 187
    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 188
    iput v7, v15, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 189
    const-string v4, "SnapshotStartingWindow for taskId=%s"

    move-object/from16 v54, v0

    const/4 v0, 0x1

    .end local v0    # "mainWindow":Lcom/android/server/wm/WindowState;
    .local v54, "mainWindow":Lcom/android/server/wm/WindowState;
    new-array v0, v0, [Ljava/lang/Object;

    const/16 v17, 0x0

    move-object/from16 v55, v2

    iget v2, v6, Lcom/android/server/wm/Task;->mTaskId:I

    .end local v2    # "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    .local v55, "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v17

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0
    :try_end_161
    .catchall {:try_start_d6 .. :try_end_161} :catchall_27a

    .line 192
    .local v0, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    if-eqz v0, :cond_185

    .line 193
    :try_start_163
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v2
    :try_end_167
    .catchall {:try_start_163 .. :try_end_167} :catchall_77

    .line 194
    .end local v48    # "backgroundColor":I
    .local v2, "backgroundColor":I
    :try_start_167
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v4
    :try_end_16b
    .catchall {:try_start_167 .. :try_end_16b} :catchall_17e

    .line 195
    .end local v49    # "statusBarColor":I
    .local v4, "statusBarColor":I
    :try_start_16b
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v17
    :try_end_16f
    .catchall {:try_start_16b .. :try_end_16f} :catchall_176

    .line 197
    .end local v50    # "navigationBarColor":I
    .local v17, "navigationBarColor":I
    move/from16 v48, v2

    move/from16 v49, v4

    move/from16 v50, v17

    goto :goto_185

    .line 200
    .end local v0    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v3    # "topFullscreenWindow":Lcom/android/server/wm/WindowState;
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v7    # "sysUiVis":I
    .end local v17    # "navigationBarColor":I
    .end local v52    # "windowFlags":I
    .end local v53    # "windowPrivateFlags":I
    .end local v54    # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v55    # "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v50    # "navigationBarColor":I
    :catchall_176
    move-exception v0

    move v3, v4

    move-object/from16 v59, v13

    move-object v4, v14

    move-object v7, v15

    goto/16 :goto_80

    .end local v4    # "statusBarColor":I
    .restart local v49    # "statusBarColor":I
    :catchall_17e
    move-exception v0

    move-object/from16 v59, v13

    move-object v4, v14

    move-object v7, v15

    goto/16 :goto_7e

    .line 197
    .end local v2    # "backgroundColor":I
    .restart local v0    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v3    # "topFullscreenWindow":Lcom/android/server/wm/WindowState;
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v7    # "sysUiVis":I
    .restart local v48    # "backgroundColor":I
    .restart local v52    # "windowFlags":I
    .restart local v53    # "windowPrivateFlags":I
    .restart local v54    # "mainWindow":Lcom/android/server/wm/WindowState;
    .restart local v55    # "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    :cond_185
    :goto_185
    :try_start_185
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v2

    .line 198
    .local v4, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v6, v4}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 199
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .end local v0    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v3    # "topFullscreenWindow":Lcom/android/server/wm/WindowState;
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v54    # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v55    # "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    move/from16 v47, v2

    .line 200
    .local v47, "currentOrientation":I
    monitor-exit v5
    :try_end_197
    .catchall {:try_start_185 .. :try_end_197} :catchall_27a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 202
    :try_start_19a
    iget v0, v14, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mSeq:I

    const/16 v6, 0x8

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v17
    :try_end_1a6
    .catch Landroid/os/RemoteException; {:try_start_19a .. :try_end_1a6} :catch_1df

    const/16 v18, 0x0

    .line 202
    move-object v2, v13

    move-object v3, v14

    move-object/from16 v54, v4

    move v4, v0

    .end local v4    # "taskBounds":Landroid/graphics/Rect;
    .local v54, "taskBounds":Landroid/graphics/Rect;
    move-object v5, v15

    move/from16 v51, v7

    move/from16 v7, v17

    .end local v7    # "sysUiVis":I
    .local v51, "sysUiVis":I
    move-object/from16 v56, v8

    move-object v8, v11

    .end local v8    # "tmpStableInsets":Landroid/graphics/Rect;
    .local v56, "tmpStableInsets":Landroid/graphics/Rect;
    move-object/from16 v57, v10

    move-object v10, v9

    .end local v10    # "tmpContentInsets":Landroid/graphics/Rect;
    .local v57, "tmpContentInsets":Landroid/graphics/Rect;
    move-object/from16 v58, v11

    move-object v11, v9

    .end local v11    # "tmpFrame":Landroid/graphics/Rect;
    .local v58, "tmpFrame":Landroid/graphics/Rect;
    move-object/from16 v59, v13

    move-object/from16 v13, v18

    .end local v13    # "session":Landroid/view/IWindowSession;
    .restart local v59    # "session":Landroid/view/IWindowSession;
    :try_start_1bf
    invoke-interface/range {v2 .. v13}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;)I

    move-result v0

    .line 205
    .local v0, "res":I
    if-gez v0, :cond_1dc

    .line 206
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add snapshot starting window res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1db
    .catch Landroid/os/RemoteException; {:try_start_1bf .. :try_end_1db} :catch_1dd

    .line 207
    return-object v16

    .line 211
    .end local v0    # "res":I
    :cond_1dc
    goto :goto_1ec

    .line 209
    :catch_1dd
    move-exception v0

    goto :goto_1ec

    .end local v51    # "sysUiVis":I
    .end local v54    # "taskBounds":Landroid/graphics/Rect;
    .end local v56    # "tmpStableInsets":Landroid/graphics/Rect;
    .end local v57    # "tmpContentInsets":Landroid/graphics/Rect;
    .end local v58    # "tmpFrame":Landroid/graphics/Rect;
    .end local v59    # "session":Landroid/view/IWindowSession;
    .restart local v4    # "taskBounds":Landroid/graphics/Rect;
    .restart local v7    # "sysUiVis":I
    .restart local v8    # "tmpStableInsets":Landroid/graphics/Rect;
    .restart local v10    # "tmpContentInsets":Landroid/graphics/Rect;
    .restart local v11    # "tmpFrame":Landroid/graphics/Rect;
    .restart local v13    # "session":Landroid/view/IWindowSession;
    :catch_1df
    move-exception v0

    move-object/from16 v54, v4

    move/from16 v51, v7

    move-object/from16 v56, v8

    move-object/from16 v57, v10

    move-object/from16 v58, v11

    move-object/from16 v59, v13

    .line 212
    .end local v4    # "taskBounds":Landroid/graphics/Rect;
    .end local v7    # "sysUiVis":I
    .end local v8    # "tmpStableInsets":Landroid/graphics/Rect;
    .end local v10    # "tmpContentInsets":Landroid/graphics/Rect;
    .end local v11    # "tmpFrame":Landroid/graphics/Rect;
    .end local v13    # "session":Landroid/view/IWindowSession;
    .restart local v51    # "sysUiVis":I
    .restart local v54    # "taskBounds":Landroid/graphics/Rect;
    .restart local v56    # "tmpStableInsets":Landroid/graphics/Rect;
    .restart local v57    # "tmpContentInsets":Landroid/graphics/Rect;
    .restart local v58    # "tmpFrame":Landroid/graphics/Rect;
    .restart local v59    # "session":Landroid/view/IWindowSession;
    :goto_1ec
    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface;

    .line 213
    invoke-virtual {v15}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v39

    move-object/from16 v34, v0

    move-object/from16 v35, p0

    move-object/from16 v36, v14

    move-object/from16 v38, p2

    move/from16 v40, v48

    move/from16 v41, v49

    move/from16 v42, v50

    move/from16 v43, v51

    move/from16 v44, v52

    move/from16 v45, v53

    move-object/from16 v46, v54

    invoke-direct/range {v34 .. v47}, Lcom/android/server/wm/TaskSnapshotSurface;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotSurface$Window;Landroid/view/Surface;Landroid/app/ActivityManager$TaskSnapshot;Ljava/lang/CharSequence;IIIIIILandroid/graphics/Rect;I)V

    move-object v2, v0

    .line 216
    .local v2, "snapshotSurface":Lcom/android/server/wm/TaskSnapshotSurface;
    invoke-virtual {v14, v2}, Lcom/android/server/wm/TaskSnapshotSurface$Window;->setOuter(Lcom/android/server/wm/TaskSnapshotSurface;)V

    .line 218
    :try_start_20f
    iget v0, v14, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mSeq:I
    :try_end_211
    .catch Landroid/os/RemoteException; {:try_start_20f .. :try_end_211} :catch_23c

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, -0x1

    move-object v4, v14

    move-object/from16 v14, v59

    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .local v4, "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    move-object v7, v15

    move-object v15, v4

    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v7, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    move/from16 v16, v0

    move-object/from16 v17, v7

    move-object/from16 v24, v58

    move-object/from16 v25, v9

    move-object/from16 v26, v57

    move-object/from16 v27, v9

    move-object/from16 v28, v56

    move-object/from16 v29, v9

    move-object/from16 v30, v9

    move-object/from16 v31, v12

    move-object/from16 v33, v37

    :try_start_236
    invoke-interface/range {v14 .. v33}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/Surface;)I
    :try_end_239
    .catch Landroid/os/RemoteException; {:try_start_236 .. :try_end_239} :catch_23a

    .line 223
    goto :goto_23f

    .line 221
    :catch_23a
    move-exception v0

    goto :goto_23f

    .end local v4    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v7    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :catch_23c
    move-exception v0

    move-object v4, v14

    move-object v7, v15

    .line 224
    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v7    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :goto_23f
    move-object/from16 v11, v56

    move-object/from16 v10, v57

    move-object/from16 v8, v58

    invoke-virtual {v2, v8, v10, v11}, Lcom/android/server/wm/TaskSnapshotSurface;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 225
    .end local v56    # "tmpStableInsets":Landroid/graphics/Rect;
    .end local v57    # "tmpContentInsets":Landroid/graphics/Rect;
    .end local v58    # "tmpFrame":Landroid/graphics/Rect;
    .local v8, "tmpFrame":Landroid/graphics/Rect;
    .restart local v10    # "tmpContentInsets":Landroid/graphics/Rect;
    .local v11, "tmpStableInsets":Landroid/graphics/Rect;
    invoke-direct {v2}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSnapshot()V

    .line 226
    return-object v2

    .line 168
    .end local v4    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v7    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v47    # "currentOrientation":I
    .end local v51    # "sysUiVis":I
    .end local v52    # "windowFlags":I
    .end local v53    # "windowPrivateFlags":I
    .end local v54    # "taskBounds":Landroid/graphics/Rect;
    .end local v59    # "session":Landroid/view/IWindowSession;
    .local v0, "mainWindow":Lcom/android/server/wm/WindowState;
    .local v2, "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v3    # "topFullscreenWindow":Lcom/android/server/wm/WindowState;
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    .local v8, "tmpStableInsets":Landroid/graphics/Rect;
    .local v11, "tmpFrame":Landroid/graphics/Rect;
    .restart local v13    # "session":Landroid/view/IWindowSession;
    .restart local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_24c
    move-object/from16 v54, v0

    move-object/from16 v55, v2

    move-object/from16 v59, v13

    move-object v4, v14

    move-object v7, v15

    move-object/from16 v60, v11

    move-object v11, v8

    move-object/from16 v8, v60

    .end local v0    # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v2    # "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    .end local v13    # "session":Landroid/view/IWindowSession;
    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v7    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v8, "tmpFrame":Landroid/graphics/Rect;
    .local v11, "tmpStableInsets":Landroid/graphics/Rect;
    .local v54, "mainWindow":Lcom/android/server/wm/WindowState;
    .restart local v55    # "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v59    # "session":Landroid/view/IWindowSession;
    :goto_259
    :try_start_259
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TaskSnapshotSurface.create: Failed to find main window for token="

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    monitor-exit v5
    :try_end_270
    .catchall {:try_start_259 .. :try_end_270} :catchall_274

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    .line 200
    .end local v3    # "topFullscreenWindow":Lcom/android/server/wm/WindowState;
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v54    # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v55    # "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    :catchall_274
    move-exception v0

    move/from16 v2, v48

    move/from16 v3, v49

    goto :goto_299

    .end local v4    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v7    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v59    # "session":Landroid/view/IWindowSession;
    .local v8, "tmpStableInsets":Landroid/graphics/Rect;
    .local v11, "tmpFrame":Landroid/graphics/Rect;
    .restart local v13    # "session":Landroid/view/IWindowSession;
    .restart local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :catchall_27a
    move-exception v0

    move-object/from16 v59, v13

    move-object v4, v14

    move-object v7, v15

    move-object/from16 v60, v11

    move-object v11, v8

    move-object/from16 v8, v60

    move/from16 v2, v48

    move/from16 v3, v49

    .end local v13    # "session":Landroid/view/IWindowSession;
    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v7    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v8, "tmpFrame":Landroid/graphics/Rect;
    .local v11, "tmpStableInsets":Landroid/graphics/Rect;
    .restart local v59    # "session":Landroid/view/IWindowSession;
    goto :goto_299

    .end local v7    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v48    # "backgroundColor":I
    .end local v49    # "statusBarColor":I
    .end local v50    # "navigationBarColor":I
    .end local v59    # "session":Landroid/view/IWindowSession;
    .local v2, "backgroundColor":I
    .local v3, "statusBarColor":I
    .local v4, "navigationBarColor":I
    .local v8, "tmpStableInsets":Landroid/graphics/Rect;
    .local v11, "tmpFrame":Landroid/graphics/Rect;
    .restart local v13    # "session":Landroid/view/IWindowSession;
    .restart local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :catchall_289
    move-exception v0

    move/from16 v48, v2

    move/from16 v49, v3

    move/from16 v50, v4

    move-object/from16 v59, v13

    move-object v4, v14

    move-object v7, v15

    move-object/from16 v60, v11

    move-object v11, v8

    move-object/from16 v8, v60

    .end local v13    # "session":Landroid/view/IWindowSession;
    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v4, "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v7    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v8, "tmpFrame":Landroid/graphics/Rect;
    .local v11, "tmpStableInsets":Landroid/graphics/Rect;
    .restart local v50    # "navigationBarColor":I
    .restart local v59    # "session":Landroid/view/IWindowSession;
    :goto_299
    :try_start_299
    monitor-exit v5
    :try_end_29a
    .catchall {:try_start_299 .. :try_end_29a} :catchall_29e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_29e
    move-exception v0

    goto :goto_299
.end method

.method private drawSizeMatchSnapshot(Landroid/graphics/GraphicBuffer;)V
    .registers 3
    .param p1, "buffer"    # Landroid/graphics/GraphicBuffer;

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 304
    return-void
.end method

.method private drawSizeMismatchSnapshot(Landroid/graphics/GraphicBuffer;)V
    .registers 9
    .param p1, "buffer"    # Landroid/graphics/GraphicBuffer;

    .line 307
    new-instance v0, Landroid/view/SurfaceSession;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/view/SurfaceSession;-><init>(Landroid/view/Surface;)V

    .line 310
    .local v0, "session":Landroid/view/SurfaceSession;
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v1, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - task-snapshot-surface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 312
    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 313
    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 314
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    .line 315
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    .line 316
    .local v1, "surface":Landroid/view/Surface;
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 319
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->calculateSnapshotCrop()Landroid/graphics/Rect;

    move-result-object v2

    .line 320
    .local v2, "crop":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskSnapshotSurface;->calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 321
    .local v3, "frame":Landroid/graphics/Rect;
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 325
    :try_start_52
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->show()V

    .line 326
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v2}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 327
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 330
    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v5

    div-float/2addr v4, v5

    .line 331
    .local v4, "scale":F
    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v6, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_76
    .catchall {:try_start_52 .. :try_end_76} :catchall_95

    .line 333
    .end local v4    # "scale":F
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 334
    nop

    .line 335
    invoke-virtual {v1, p1}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 336
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 338
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v4

    .line 339
    .local v4, "c":Landroid/graphics/Canvas;
    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/TaskSnapshotSurface;->drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 340
    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 341
    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->release()V

    .line 342
    return-void

    .line 333
    .end local v4    # "c":Landroid/graphics/Canvas;
    :catchall_95
    move-exception v4

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v4
.end method

.method private drawSnapshot()V
    .registers 5

    .line 280
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 283
    .local v0, "buffer":Landroid/graphics/GraphicBuffer;
    iget-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    if-eqz v1, :cond_e

    .line 287
    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSizeMismatchSnapshot(Landroid/graphics/GraphicBuffer;)V

    goto :goto_11

    .line 289
    :cond_e
    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSizeMatchSnapshot(Landroid/graphics/GraphicBuffer;)V

    .line 291
    :goto_11
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    .line 293
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHasDrawn:Z

    .line 294
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 295
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->reportDrawn()V

    .line 298
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 299
    return-void

    .line 294
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private reportDrawn()V
    .registers 3

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 411
    goto :goto_9

    .line 409
    :catch_8
    move-exception v0

    .line 412
    :goto_9
    return-void
.end method


# virtual methods
.method calculateSnapshotCrop()Landroid/graphics/Rect;
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 351
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 352
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 353
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    .line 357
    .local v1, "insets":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTaskBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_31

    const/4 v2, 0x1

    goto :goto_32

    :cond_31
    move v2, v3

    .line 358
    .local v2, "isTop":Z
    :goto_32
    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 359
    if-eqz v2, :cond_40

    goto :goto_4b

    :cond_40
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    :goto_4b
    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 360
    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 361
    invoke-virtual {v7}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 358
    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/graphics/Rect;->inset(IIII)V

    .line 362
    return-object v0
.end method

.method calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6
    .param p1, "crop"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 372
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 373
    .local v0, "frame":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v1

    .line 376
    .local v1, "scale":F
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 379
    iget v2, p1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 382
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mContentInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->getColorViewLeftInset(II)I

    move-result v2

    .line 384
    .local v2, "colorViewLeftInset":I
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 385
    return-object v0
.end method

.method drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 21
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    .line 390
    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v2

    .line 391
    .local v2, "statusBarHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v3, v4, :cond_16

    move v3, v6

    goto :goto_17

    :cond_16
    move v3, v5

    .line 392
    .local v3, "fillHorizontally":Z
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v7, :cond_21

    move v5, v6

    nop

    :cond_21
    move v4, v5

    .line 393
    .local v4, "fillVertically":Z
    if-eqz v3, :cond_4f

    .line 394
    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v5

    iget v5, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mStatusBarColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    const/16 v6, 0xff

    if-ne v5, v6, :cond_34

    int-to-float v5, v2

    .line 395
    :goto_32
    move v8, v5

    goto :goto_36

    .line 394
    :cond_34
    const/4 v5, 0x0

    goto :goto_32

    .line 395
    :goto_36
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v9, v5

    if-eqz v4, :cond_42

    .line 396
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    .line 397
    :goto_40
    move v10, v5

    goto :goto_48

    :cond_42
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    goto :goto_40

    :goto_48
    iget-object v11, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 394
    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 400
    :cond_4f
    if-eqz v4, :cond_6a

    .line 401
    const/4 v13, 0x0

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v15, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 403
    :cond_6a
    iget-object v5, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    move-object/from16 v6, p1

    invoke-virtual {v5, v6, v1}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 404
    return-void
.end method

.method public remove()V
    .registers 10

    .line 251
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 253
    .local v1, "now":J
    iget-boolean v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    if-eqz v3, :cond_2c

    iget-wide v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1c2

    cmp-long v3, v3, v5

    if-gez v3, :cond_2c

    .line 254
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;

    invoke-direct {v4, p0}, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;-><init>(Lcom/android/server/wm/TaskSnapshotSurface;)V

    iget-wide v7, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    add-long/2addr v7, v5

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 258
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 260
    .end local v1    # "now":J
    :cond_2c
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 263
    :try_start_30
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_37} :catch_38

    .line 266
    goto :goto_39

    .line 264
    :catch_38
    move-exception v0

    .line 267
    :goto_39
    return-void

    .line 260
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;
    .param p3, "stableInsets"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 272
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 273
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    .line 275
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_34

    goto :goto_36

    :cond_34
    const/4 v0, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v0, 0x1

    :goto_37
    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    .line 276
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 277
    return-void
.end method
