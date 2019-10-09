.class public Lcom/android/server/wm/AppWindowContainerController;
.super Lcom/android/server/wm/WindowContainerController;
.source "AppWindowContainerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppWindowContainerController$GestureCallback;,
        Lcom/android/server/wm/AppWindowContainerController$H;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainerController<",
        "Lcom/android/server/wm/AppWindowToken;",
        "Lcom/android/server/wm/AppWindowContainerListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final STARTING_WINDOW_TYPE_NONE:I = 0x0

.field private static final STARTING_WINDOW_TYPE_SNAPSHOT:I = 0x1

.field private static final STARTING_WINDOW_TYPE_SPLASH_SCREEN:I = 0x2


# instance fields
.field private final mAddStartingWindow:Ljava/lang/Runnable;

.field private mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mOnWindowsGone:Ljava/lang/Runnable;

.field private final mOnWindowsVisible:Ljava/lang/Runnable;

.field private final mToken:Landroid/view/IApplicationToken;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskWindowContainerController;Landroid/view/IApplicationToken;Lcom/android/server/wm/AppWindowContainerListener;IIZZIZZZIIJ)V
    .registers 33
    .param p1, "taskController"    # Lcom/android/server/wm/TaskWindowContainerController;
    .param p2, "token"    # Landroid/view/IApplicationToken;
    .param p3, "listener"    # Lcom/android/server/wm/AppWindowContainerListener;
    .param p4, "index"    # I
    .param p5, "requestedOrientation"    # I
    .param p6, "fullscreen"    # Z
    .param p7, "showForAllUsers"    # Z
    .param p8, "configChanges"    # I
    .param p9, "voiceInteraction"    # Z
    .param p10, "launchTaskBehind"    # Z
    .param p11, "alwaysFocusable"    # Z
    .param p12, "targetSdkVersion"    # I
    .param p13, "rotationAnimationHint"    # I
    .param p14, "inputDispatchingTimeoutNanos"    # J

    .line 213
    nop

    .line 217
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getInstance()Lcom/android/server/wm/WindowManagerService;

    move-result-object v16

    .line 213
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-wide/from16 v14, p14

    invoke-direct/range {v0 .. v16}, Lcom/android/server/wm/AppWindowContainerController;-><init>(Lcom/android/server/wm/TaskWindowContainerController;Landroid/view/IApplicationToken;Lcom/android/server/wm/AppWindowContainerListener;IIZZIZZZIIJLcom/android/server/wm/WindowManagerService;)V

    .line 218
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/TaskWindowContainerController;Landroid/view/IApplicationToken;Lcom/android/server/wm/AppWindowContainerListener;IIZZIZZZIIJLcom/android/server/wm/WindowManagerService;)V
    .registers 37
    .param p1, "taskController"    # Lcom/android/server/wm/TaskWindowContainerController;
    .param p2, "token"    # Landroid/view/IApplicationToken;
    .param p3, "listener"    # Lcom/android/server/wm/AppWindowContainerListener;
    .param p4, "index"    # I
    .param p5, "requestedOrientation"    # I
    .param p6, "fullscreen"    # Z
    .param p7, "showForAllUsers"    # Z
    .param p8, "configChanges"    # I
    .param p9, "voiceInteraction"    # Z
    .param p10, "launchTaskBehind"    # Z
    .param p11, "alwaysFocusable"    # Z
    .param p12, "targetSdkVersion"    # I
    .param p13, "rotationAnimationHint"    # I
    .param p14, "inputDispatchingTimeoutNanos"    # J
    .param p16, "service"    # Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 226
    move-object/from16 v13, p16

    move-object/from16 v12, p3

    invoke-direct {v15, v12, v13}, Lcom/android/server/wm/WindowContainerController;-><init>(Lcom/android/server/wm/WindowContainerListener;Lcom/android/server/wm/WindowManagerService;)V

    .line 109
    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$BD6wMjkwgPM5dckzkeLRiPrmx9Y;

    invoke-direct {v0, v15}, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$BD6wMjkwgPM5dckzkeLRiPrmx9Y;-><init>(Lcom/android/server/wm/AppWindowContainerController;)V

    iput-object v0, v15, Lcom/android/server/wm/AppWindowContainerController;->mOnWindowsVisible:Ljava/lang/Runnable;

    .line 118
    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$mZqlV7Ety8-HHzaQXVEl4hu-8mc;

    invoke-direct {v0, v15}, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$mZqlV7Ety8-HHzaQXVEl4hu-8mc;-><init>(Lcom/android/server/wm/AppWindowContainerController;)V

    iput-object v0, v15, Lcom/android/server/wm/AppWindowContainerController;->mOnWindowsGone:Ljava/lang/Runnable;

    .line 127
    new-instance v0, Lcom/android/server/wm/AppWindowContainerController$1;

    invoke-direct {v0, v15}, Lcom/android/server/wm/AppWindowContainerController$1;-><init>(Lcom/android/server/wm/AppWindowContainerController;)V

    iput-object v0, v15, Lcom/android/server/wm/AppWindowContainerController;->mAddStartingWindow:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/android/server/wm/AppWindowContainerController$H;

    iget-object v1, v13, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/server/wm/AppWindowContainerController$H;-><init>(Lcom/android/server/wm/AppWindowContainerController;Landroid/os/Looper;)V

    iput-object v0, v15, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    .line 228
    move-object/from16 v11, p2

    iput-object v11, v15, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    .line 229
    iget-object v10, v15, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v10

    :try_start_34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 230
    iget-object v0, v15, Lcom/android/server/wm/AppWindowContainerController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v15, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-interface {v1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 231
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_62

    .line 233
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    monitor-exit v10
    :try_end_5e
    .catchall {:try_start_34 .. :try_end_5e} :catchall_dc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 237
    :cond_62
    :try_start_62
    iget-object v1, v14, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    move-object v9, v1

    .line 238
    .local v9, "task":Lcom/android/server/wm/Task;
    if-eqz v9, :cond_b7

    .line 243
    iget-object v2, v15, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5
    :try_end_6f
    .catchall {:try_start_62 .. :try_end_6f} :catchall_dc

    move-object v1, v15

    move-object v3, v11

    move/from16 v4, p9

    move-wide/from16 v6, p14

    move/from16 v8, p6

    move-object/from16 v17, v0

    move-object v0, v9

    move/from16 v9, p7

    .end local v9    # "task":Lcom/android/server/wm/Task;
    .local v0, "task":Lcom/android/server/wm/Task;
    .local v17, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v18, v10

    move/from16 v10, p12

    move/from16 v11, p5

    move/from16 v12, p13

    move/from16 v13, p8

    move/from16 v14, p10

    move/from16 v15, p11

    move-object/from16 v16, p0

    :try_start_8c
    invoke-virtual/range {v1 .. v16}, Lcom/android/server/wm/AppWindowContainerController;->createAppWindow(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;JZZIIIIZZLcom/android/server/wm/AppWindowContainerController;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_b1

    .line 249
    .end local v17    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    move/from16 v2, p4

    :try_start_92
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/AppWindowToken;I)V

    .line 251
    iget-object v3, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v3, :cond_a8

    iget-object v3, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getActivityType()I

    move-result v3
    :try_end_9f
    .catchall {:try_start_92 .. :try_end_9f} :catchall_af

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a8

    .line 252
    move-object/from16 v3, p16

    :try_start_a4
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowManagerService;->setRecentsAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V

    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    goto :goto_aa

    .line 255
    :cond_a8
    move-object/from16 v3, p16

    :goto_aa
    monitor-exit v18
    :try_end_ab
    .catchall {:try_start_a4 .. :try_end_ab} :catchall_d8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 256
    return-void

    .line 255
    :catchall_af
    move-exception v0

    goto :goto_b4

    :catchall_b1
    move-exception v0

    move/from16 v2, p4

    :goto_b4
    move-object/from16 v3, p16

    goto :goto_d9

    .line 239
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v9    # "task":Lcom/android/server/wm/Task;
    :cond_b7
    move/from16 v2, p4

    move-object/from16 v17, v0

    move-object v0, v9

    move-object/from16 v18, v10

    move-object v3, v13

    .end local v9    # "task":Lcom/android/server/wm/Task;
    .local v0, "task":Lcom/android/server/wm/Task;
    .restart local v17    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :try_start_bf
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppWindowContainerController: invalid  controller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_cb
    .catchall {:try_start_bf .. :try_end_cb} :catchall_d8

    move-object/from16 v5, p1

    :try_start_cd
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v17    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_d8
    move-exception v0

    :goto_d9
    move-object/from16 v5, p1

    goto :goto_e3

    :catchall_dc
    move-exception v0

    move/from16 v2, p4

    move-object/from16 v18, v10

    move-object v3, v13

    move-object v5, v14

    :goto_e3
    monitor-exit v18
    :try_end_e4
    .catchall {:try_start_cd .. :try_end_e4} :catchall_e8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_e8
    move-exception v0

    goto :goto_e3
.end method

.method private createSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Z
    .registers 5
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 689
    if-nez p1, :cond_4

    .line 690
    const/4 v0, 0x0

    return v0

    .line 694
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    new-instance v1, Lcom/android/server/wm/SnapshotStartingData;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/SnapshotStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/app/ActivityManager$TaskSnapshot;)V

    iput-object v1, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 695
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowContainerController;->scheduleAddStartingWindow()V

    .line 696
    const/4 v0, 0x1

    return v0
.end method

.method private getStartingWindowType(ZZZZZZLandroid/app/ActivityManager$TaskSnapshot;)I
    .registers 11
    .param p1, "newTask"    # Z
    .param p2, "taskSwitch"    # Z
    .param p3, "processRunning"    # Z
    .param p4, "allowTaskSnapshot"    # Z
    .param p5, "activityCreated"    # Z
    .param p6, "fromRecents"    # Z
    .param p7, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 658
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_e

    .line 662
    return v1

    .line 663
    :cond_e
    const/4 v0, 0x2

    if-nez p1, :cond_33

    if-eqz p3, :cond_33

    if-eqz p2, :cond_18

    if-nez p5, :cond_18

    goto :goto_33

    .line 665
    :cond_18
    if-eqz p2, :cond_32

    if-eqz p4, :cond_32

    .line 666
    if-nez p7, :cond_1f

    goto :goto_31

    .line 670
    :cond_1f
    nop

    .line 669
    invoke-direct {p0, p7}, Lcom/android/server/wm/AppWindowContainerController;->snapshotOrientationSameAsTask(Landroid/app/ActivityManager$TaskSnapshot;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 670
    invoke-direct {p0, p7}, Lcom/android/server/wm/AppWindowContainerController;->snapshotWindowingModeSameAsTask(Landroid/app/ActivityManager$TaskSnapshot;)Z

    move-result v1

    if-nez v1, :cond_2e

    :cond_2c
    if-eqz p6, :cond_30

    .line 672
    :cond_2e
    const/4 v1, 0x1

    goto :goto_31

    .line 666
    :cond_30
    move v1, v0

    :goto_31
    return v1

    .line 674
    :cond_32
    return v1

    .line 664
    :cond_33
    :goto_33
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/AppWindowContainerController;)V
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-nez v0, :cond_5

    .line 111
    return-void

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/AppWindowContainerListener;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerListener;->onWindowsVisible()V

    .line 116
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/wm/AppWindowContainerController;)V
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-nez v0, :cond_5

    .line 120
    return-void

    .line 124
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/AppWindowContainerListener;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerListener;->onWindowsGone()V

    .line 125
    return-void
.end method

.method static synthetic lambda$removeStartingWindow$2(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V
    .registers 4
    .param p0, "surface"    # Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 760
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;->remove()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 763
    goto :goto_c

    .line 761
    :catch_4
    move-exception v0

    .line 762
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "Exception when removing starting window"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 764
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method private snapshotOrientationSameAsTask(Landroid/app/ActivityManager$TaskSnapshot;)Z
    .registers 5
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 700
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 701
    return v0

    .line 703
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result v2

    if-ne v1, v2, :cond_1a

    const/4 v0, 0x1

    nop

    :cond_1a
    return v0
.end method

.method private snapshotWindowingModeSameAsTask(Landroid/app/ActivityManager$TaskSnapshot;)Z
    .registers 5
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 708
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 709
    return v0

    .line 711
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getWindowingMode()I

    move-result v2

    if-ne v1, v2, :cond_18

    const/4 v0, 0x1

    nop

    :cond_18
    return v0
.end method


# virtual methods
.method public addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZZZZZZ)Z
    .registers 37
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "theme"    # I
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p5, "labelRes"    # I
    .param p6, "icon"    # I
    .param p7, "logo"    # I
    .param p8, "windowFlags"    # I
    .param p9, "transferFrom"    # Landroid/os/IBinder;
    .param p10, "newTask"    # Z
    .param p11, "taskSwitch"    # Z
    .param p12, "processRunning"    # Z
    .param p13, "allowTaskSnapshot"    # Z
    .param p14, "activityCreated"    # Z
    .param p15, "fromRecents"    # Z

    move-object/from16 v9, p0

    move-object/from16 v15, p1

    move/from16 v14, p2

    .line 542
    iget-object v13, v9, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v13

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 548
    iget-object v0, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_164

    const/4 v10, 0x0

    if-nez v0, :cond_36

    .line 549
    :try_start_11
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to set icon of non-existing app token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    monitor-exit v13
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 651
    :catchall_2e
    move-exception v0

    move/from16 v16, p8

    move-object/from16 v5, p9

    .end local p8    # "windowFlags":I
    .local v16, "windowFlags":I
    :goto_33
    move-object v8, v13

    goto/16 :goto_16a

    .line 555
    .end local v16    # "windowFlags":I
    .restart local p8    # "windowFlags":I
    :cond_36
    :try_start_36
    iget-object v0, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->okToDisplay()Z

    move-result v0
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_164

    if-nez v0, :cond_45

    .line 556
    :try_start_40
    monitor-exit v13
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 559
    :cond_45
    :try_start_45
    iget-object v0, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_164

    if-eqz v0, :cond_52

    .line 560
    :try_start_4d
    monitor-exit v13
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 563
    :cond_52
    :try_start_52
    iget-object v0, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_164

    .line 564
    .local v0, "mainWin":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_69

    :try_start_5c
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 566
    monitor-exit v13
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 569
    :cond_69
    :try_start_69
    iget-object v1, v9, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v2, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 570
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mUserId:I

    .line 569
    invoke-virtual {v1, v2, v3, v10, v10}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v1

    move-object v12, v1

    .line 572
    .local v12, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    const/4 v5, 0x0

    move-object v1, v9

    move/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, p12

    move/from16 v6, p14

    move/from16 v7, p15

    move-object v8, v12

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/AppWindowContainerController;->getStartingWindowType(ZZZZZZLandroid/app/ActivityManager$TaskSnapshot;)I

    move-result v1
    :try_end_97
    .catchall {:try_start_69 .. :try_end_97} :catchall_164

    .line 577
    .local v1, "type":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_a3

    .line 578
    :try_start_9a
    invoke-direct {v9, v12}, Lcom/android/server/wm/AppWindowContainerController;->createSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Z

    move-result v2

    monitor-exit v13
    :try_end_9f
    .catchall {:try_start_9a .. :try_end_9f} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 586
    :cond_a3
    if-eqz v14, :cond_10b

    .line 587
    :try_start_a5
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->Window:[I

    iget-object v5, v9, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v15, v14, v4, v5}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v3

    .line 589
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    if-nez v3, :cond_ba

    .line 592
    monitor-exit v13
    :try_end_b6
    .catchall {:try_start_a5 .. :try_end_b6} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 594
    :cond_ba
    :try_start_ba
    iget-object v4, v3, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 596
    .local v4, "windowIsTranslucent":Z
    iget-object v5, v3, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 598
    .local v5, "windowIsFloating":Z
    iget-object v6, v3, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v7, 0xe

    invoke-virtual {v6, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 600
    .local v6, "windowShowWallpaper":Z
    iget-object v7, v3, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v8, 0xc

    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 612
    .local v7, "windowDisableStarting":Z
    iget-object v8, v9, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8, v15, v4, v7}, Lcom/android/server/wm/AppWindowContainerControllerInjector;->isAllowedForceStartingWindow(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v8

    .line 614
    .local v8, "isAllowed":Z
    if-nez v8, :cond_e7

    .line 615
    monitor-exit v13
    :try_end_e3
    .catchall {:try_start_ba .. :try_end_e3} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 617
    :cond_e7
    if-eqz v5, :cond_ee

    .line 618
    :try_start_e9
    monitor-exit v13
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 621
    :cond_ee
    if-eqz v6, :cond_10b

    .line 622
    :try_start_f0
    iget-object v11, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v11}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v11

    if-nez v11, :cond_106

    .line 629
    const/high16 v11, 0x100000

    or-int v11, p8, v11

    .line 636
    .end local p8    # "windowFlags":I
    .local v11, "windowFlags":I
    move v3, v11

    goto :goto_10d

    .line 631
    .end local v11    # "windowFlags":I
    .restart local p8    # "windowFlags":I
    :cond_106
    monitor-exit v13
    :try_end_107
    .catchall {:try_start_f0 .. :try_end_107} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 636
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v4    # "windowIsTranslucent":Z
    .end local v5    # "windowIsFloating":Z
    .end local v6    # "windowShowWallpaper":Z
    .end local v7    # "windowDisableStarting":Z
    .end local v8    # "isAllowed":Z
    :cond_10b
    move/from16 v3, p8

    .end local p8    # "windowFlags":I
    .local v3, "windowFlags":I
    :goto_10d
    :try_start_10d
    iget-object v4, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v4, Lcom/android/server/wm/AppWindowToken;
    :try_end_111
    .catchall {:try_start_10d .. :try_end_111} :catchall_15d

    move-object/from16 v5, p9

    :try_start_113
    invoke-virtual {v4, v5}, Lcom/android/server/wm/AppWindowToken;->transferStartingWindow(Landroid/os/IBinder;)Z

    move-result v4
    :try_end_117
    .catchall {:try_start_113 .. :try_end_117} :catchall_15b

    if-eqz v4, :cond_123

    .line 637
    :try_start_119
    monitor-exit v13
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_11e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 651
    .end local v0    # "mainWin":Lcom/android/server/wm/WindowState;
    .end local v1    # "type":I
    .end local v12    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :catchall_11e
    move-exception v0

    move/from16 v16, v3

    goto/16 :goto_33

    .line 642
    .restart local v0    # "mainWin":Lcom/android/server/wm/WindowState;
    .restart local v1    # "type":I
    .restart local v12    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_123
    const/4 v4, 0x2

    if-eq v1, v4, :cond_12b

    .line 643
    :try_start_126
    monitor-exit v13
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_11e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 647
    :cond_12b
    :try_start_12b
    iget-object v4, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    new-instance v6, Lcom/android/server/wm/SplashScreenStartingData;

    iget-object v11, v9, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    .line 649
    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v20
    :try_end_13b
    .catchall {:try_start_12b .. :try_end_13b} :catchall_15b

    move-object v10, v6

    move-object v7, v12

    move-object v12, v15

    .end local v12    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .local v7, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    move-object v8, v13

    move v13, v14

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, v3

    :try_start_14c
    invoke-direct/range {v10 .. v20}, Lcom/android/server/wm/SplashScreenStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;)V

    iput-object v6, v4, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowContainerController;->scheduleAddStartingWindow()V

    .line 651
    .end local v0    # "mainWin":Lcom/android/server/wm/WindowState;
    .end local v1    # "type":I
    .end local v7    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    monitor-exit v8
    :try_end_155
    .catchall {:try_start_14c .. :try_end_155} :catchall_159

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 652
    return v2

    .line 651
    :catchall_159
    move-exception v0

    goto :goto_161

    :catchall_15b
    move-exception v0

    goto :goto_160

    :catchall_15d
    move-exception v0

    move-object/from16 v5, p9

    .end local v3    # "windowFlags":I
    .restart local v16    # "windowFlags":I
    :goto_160
    move-object v8, v13

    :goto_161
    move/from16 v16, v3

    goto :goto_16a

    .end local v16    # "windowFlags":I
    .restart local p8    # "windowFlags":I
    :catchall_164
    move-exception v0

    move-object/from16 v5, p9

    move-object v8, v13

    move/from16 v16, p8

    .end local p8    # "windowFlags":I
    .restart local v16    # "windowFlags":I
    :goto_16a
    :try_start_16a
    monitor-exit v8
    :try_end_16b
    .catchall {:try_start_16a .. :try_end_16b} :catchall_16f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_16f
    move-exception v0

    goto :goto_16a
.end method

.method createAppWindow(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;JZZIIIIZZLcom/android/server/wm/AppWindowContainerController;)Lcom/android/server/wm/AppWindowToken;
    .registers 33
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"    # Landroid/view/IApplicationToken;
    .param p3, "voiceInteraction"    # Z
    .param p4, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p5, "inputDispatchingTimeoutNanos"    # J
    .param p7, "fullscreen"    # Z
    .param p8, "showForAllUsers"    # Z
    .param p9, "targetSdk"    # I
    .param p10, "orientation"    # I
    .param p11, "rotationAnimationHint"    # I
    .param p12, "configChanges"    # I
    .param p13, "launchTaskBehind"    # Z
    .param p14, "alwaysFocusable"    # Z
    .param p15, "controller"    # Lcom/android/server/wm/AppWindowContainerController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 264
    new-instance v16, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcom/android/server/wm/AppWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;JZZIIIIZZLcom/android/server/wm/AppWindowContainerController;)V

    return-object v16
.end method

.method ensureActivitiesVisible()V
    .registers 2

    .line 938
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    if-eqz v0, :cond_9

    .line 939
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerController$GestureCallback;->ensureActivitiesVisible()V

    .line 941
    :cond_9
    return-void
.end method

.method getMiuiLaunchIconInfo()Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;
    .registers 2

    .line 918
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerController$GestureCallback;->getMiuiLaunchIconInfo()Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getOrientation()I
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 326
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_10

    .line 327
    const/4 v1, -0x1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 330
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getOrientationIgnoreVisibility()I

    move-result v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 331
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isHomeAppToken()Z
    .registers 2

    .line 928
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerController$GestureCallback;->isHomeAppToken()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method keyDispatchingTimedOut(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "windowPid"    # I

    .line 873
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/AppWindowContainerListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/AppWindowContainerListener;->keyDispatchingTimedOut(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method launchHome()V
    .registers 2

    .line 932
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    if-eqz v0, :cond_9

    .line 933
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerController$GestureCallback;->launchHome()V

    .line 935
    :cond_9
    return-void
.end method

.method public notifyAppResumed(Z)V
    .registers 6
    .param p1, "wasStopped"    # Z

    .line 785
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 786
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_27

    .line 787
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to notify resumed of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 790
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->notifyAppResumed(Z)V

    .line 791
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 792
    return-void

    .line 791
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppStopped()V
    .registers 5

    .line 806
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 807
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_27

    .line 808
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to notify stopped of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 812
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->notifyAppStopped()V

    .line 813
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 814
    return-void

    .line 813
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppStopping()V
    .registers 5

    .line 795
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 796
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_27

    .line 797
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to notify stopping on non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 801
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->detachChildren()V

    .line 802
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 803
    return-void

    .line 802
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyStartFromRecents()V
    .registers 6

    .line 495
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 496
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_f

    .line 497
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 500
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiGestureController;->disabledAppTransitionSkipped()V

    .line 501
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MiuiGestureController;->notifyStartFromRecents(Lcom/android/server/wm/AppWindowToken;)V

    .line 503
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mPendingExecuteAppTransition:Z

    .line 505
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 506
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 509
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_f .. :try_end_39} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 510
    return-void

    .line 509
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyUnknownVisibilityLaunched()V
    .registers 4

    .line 531
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 532
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_15

    .line 533
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyLaunched(Lcom/android/server/wm/AppWindowToken;)V

    .line 535
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 536
    return-void

    .line 535
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onGestureCancel()V
    .registers 2

    .line 906
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    if-eqz v0, :cond_9

    .line 907
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerController$GestureCallback;->onGestureCancel()V

    .line 909
    :cond_9
    return-void
.end method

.method onGestureFinished()V
    .registers 2

    .line 912
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    if-eqz v0, :cond_9

    .line 913
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerController$GestureCallback;->onGestureFinished()V

    .line 915
    :cond_9
    return-void
.end method

.method public bridge synthetic onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 63
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainerController;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public pauseKeyDispatching()V
    .registers 4

    .line 769
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 770
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_15

    .line 771
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 773
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 774
    return-void

    .line 773
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerGestureCallback(Lcom/android/server/wm/AppWindowContainerController$GestureCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    .line 902
    iput-object p1, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    .line 903
    return-void
.end method

.method public registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 6
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 845
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 846
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_27

    .line 847
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to register remote animations with non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 851
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    .line 852
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 853
    return-void

    .line 852
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeContainer()V
    .registers 3

    .line 285
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use removeContainer(displayId) instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeContainer(I)V
    .registers 7
    .param p1, "displayId"    # I

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 272
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 273
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_34

    .line 274
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeAppToken: Attempted to remove binder token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from non-existing displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 278
    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->removeAppToken(Landroid/os/IBinder;)V

    .line 279
    invoke-super {p0}, Lcom/android/server/wm/WindowContainerController;->removeContainer()V

    .line 280
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 281
    return-void

    .line 280
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeStartingWindow()V
    .registers 5

    .line 716
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 717
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    if-nez v1, :cond_22

    .line 718
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_1d

    .line 723
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 725
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 729
    :cond_22
    :try_start_22
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_62

    .line 730
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 731
    .local v1, "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v3, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 732
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v3, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 733
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 734
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 735
    if-nez v1, :cond_50

    .line 740
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_22 .. :try_end_4c} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 747
    :cond_50
    nop

    .line 757
    :try_start_51
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$8qyUV78Is6_I1WVMp6w8VGpeuOE;

    invoke-direct {v3, v1}, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$8qyUV78Is6_I1WVMp6w8VGpeuOE;-><init>(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 765
    .end local v1    # "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 766
    return-void

    .line 747
    :cond_62
    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 765
    :catchall_67
    move-exception v1

    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public reparent(Lcom/android/server/wm/TaskWindowContainerController;I)V
    .registers 8
    .param p1, "taskController"    # Lcom/android/server/wm/TaskWindowContainerController;
    .param p2, "position"    # I

    .line 289
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 292
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_f

    .line 295
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 297
    :cond_f
    :try_start_f
    iget-object v1, p1, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    .line 298
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_2c

    .line 302
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/wm/AppWindowToken;->reparent(Lcom/android/server/wm/Task;I)V

    .line 303
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 304
    .end local v1    # "task":Lcom/android/server/wm/Task;
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 305
    return-void

    .line 299
    .restart local v1    # "task":Lcom/android/server/wm/Task;
    :cond_2c
    :try_start_2c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reparent: could not find task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 304
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_2c .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method reportStartingWindowDrawn()V
    .registers 4

    .line 856
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 857
    return-void
.end method

.method reportWindowsDrawn()V
    .registers 4

    .line 860
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 861
    return-void
.end method

.method reportWindowsGone()V
    .registers 3

    .line 868
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mOnWindowsGone:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 869
    return-void
.end method

.method reportWindowsVisible()V
    .registers 3

    .line 864
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mOnWindowsVisible:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 865
    return-void
.end method

.method public resumeKeyDispatching()V
    .registers 4

    .line 777
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 778
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_15

    .line 779
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 781
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 782
    return-void

    .line 781
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method scheduleAddStartingWindow()V
    .registers 3

    .line 682
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mAddStartingWindow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 684
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mAddStartingWindow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 686
    :cond_15
    return-void
.end method

.method public setCastMode(Z)V
    .registers 5
    .param p1, "enterCast"    # Z

    .line 513
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 514
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 515
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iput-boolean p1, v1, Lcom/android/server/wm/AppWindowToken;->isCastMode:Z

    .line 516
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setCastStackId(I)V

    .line 517
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->setCastMode(Z)V

    .line 518
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowStateAnimator;->setCastMode(Z)V

    goto :goto_42

    .line 520
    :cond_3a
    const-string v1, "AppWindowContainerController"

    const-string/jumbo v2, "no main window to cast"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 523
    return-void

    .line 522
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setDisablePreviewScreenshots(Z)V
    .registers 6
    .param p1, "disable"    # Z

    .line 335
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 336
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_27

    .line 337
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set disable screenshots of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 341
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->setDisablePreviewScreenshots(Z)V

    .line 342
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 343
    return-void

    .line 342
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setDummyVisible(ZZZ)V
    .registers 8
    .param p1, "dummyVisible"    # Z
    .param p2, "reallyVisible"    # Z
    .param p3, "curVisible"    # Z

    .line 466
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 467
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_f

    .line 468
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 471
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iput-boolean p1, v1, Lcom/android/server/wm/AppWindowToken;->mIsDummyVisible:Z

    .line 473
    if-eqz p3, :cond_57

    .line 474
    const/4 v1, 0x0

    .line 475
    .local v1, "enter":Z
    if-eqz p1, :cond_25

    .line 476
    const/4 v1, 0x0

    .line 477
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_31

    .line 478
    :cond_25
    if-eqz p2, :cond_52

    .line 479
    const/4 v1, 0x1

    .line 480
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 485
    :goto_31
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/MiuiGestureController;->setKeepWallpaperShowing(Z)V

    .line 486
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->mIsDummyAnimating:Z

    .line 487
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    .line 488
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iput-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mDummyVisibleApp:Lcom/android/server/wm/AppWindowToken;

    .line 489
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v1, v2, Lcom/android/server/wm/WindowManagerService;->mDummyVisibleAppEnter:Z

    .end local v1    # "enter":Z
    goto :goto_57

    .line 482
    .restart local v1    # "enter":Z
    :cond_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_f .. :try_end_53} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 491
    .end local v1    # "enter":Z
    :cond_57
    :goto_57
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 492
    return-void

    .line 491
    :catchall_5c
    move-exception v1

    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setLaunchRecentsBehind(Z)V
    .registers 3
    .param p1, "launchBehind"    # Z

    .line 922
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    if-eqz v0, :cond_9

    .line 923
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/AppWindowContainerController$GestureCallback;->setLaunchRecentsBehind(Z)V

    .line 925
    :cond_9
    return-void
.end method

.method public setMiuiConfigFlag(I)V
    .registers 4
    .param p1, "miuiConfigFlag"    # I
        .annotation build Landroid/app/WindowConfiguration$MiuiConfigFlag;
        .end annotation
    .end param

    .line 959
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-interface {v1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 960
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_12

    .line 961
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/AppWindowToken;->setMiuiConfigFlag(IZ)V

    .line 963
    :cond_12
    return-void
.end method

.method public setOrientation(IILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .registers 10
    .param p1, "requestedOrientation"    # I
    .param p2, "displayId"    # I
    .param p3, "displayConfig"    # Landroid/content/res/Configuration;
    .param p4, "freezeScreenIfNeeded"    # Z

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 310
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    const/4 v2, 0x0

    if-nez v1, :cond_28

    .line 311
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set orientation of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 316
    :cond_28
    :try_start_28
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->setOrientation(I)V

    .line 318
    if-eqz p4, :cond_38

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-interface {v1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    nop

    :cond_38
    move-object v1, v2

    .line 319
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p3, v1, p2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;I)Landroid/content/res/Configuration;

    move-result-object v2

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 321
    .end local v1    # "binder":Landroid/os/IBinder;
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setVisibility(ZZ)V
    .registers 11
    .param p1, "visible"    # Z
    .param p2, "deferHidingClient"    # Z

    .line 346
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 347
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_27

    .line 348
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_119

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 353
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 362
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    const/4 v2, 0x1

    if-nez p1, :cond_42

    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_42

    .line 364
    if-nez p2, :cond_3d

    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-eqz v3, :cond_3d

    .line 367
    iput-boolean p2, v1, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    .line 368
    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 370
    :cond_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_27 .. :try_end_3e} :catchall_119

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 378
    :cond_42
    :try_start_42
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 379
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 380
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 381
    xor-int/lit8 v4, p1, 0x1

    iput-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 382
    iput-boolean p2, v1, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    .line 384
    if-nez p1, :cond_5f

    .line 388
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->removeDeadWindows()V

    goto :goto_b5

    .line 390
    :cond_5f
    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    if-nez v4, :cond_7a

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 391
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 395
    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_7a
    iput-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 400
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v4

    if-nez v4, :cond_86

    iget-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    if-eqz v4, :cond_91

    .line 401
    :cond_86
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    .line 404
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 405
    iput-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 413
    :cond_91
    invoke-virtual {v1, v3}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 417
    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_ac

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    .line 418
    invoke-virtual {v4}, Lcom/android/server/wm/MiuiGestureController;->isGestureRunning()Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 419
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->requestUpdateWallpaperIfNeeded()V

    .line 424
    :cond_ac
    iput-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    .line 426
    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->transferStartingWindowFromHiddenAboveTokenIfNeeded()V

    .line 431
    :goto_b5
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->okToAnimate()Z

    move-result v4

    if-eqz v4, :cond_107

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    if-eqz v4, :cond_107

    .line 432
    iput-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 433
    if-eqz p1, :cond_d3

    .line 434
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 435
    iput-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    goto :goto_dc

    .line 437
    :cond_d3
    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 438
    iput-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    .line 440
    :goto_dc
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_102

    .line 443
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 444
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 445
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_102

    .line 446
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 447
    .local v4, "focusedToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v4, :cond_102

    .line 451
    invoke-virtual {v4, v2}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    .line 452
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 456
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v4    # "focusedToken":Lcom/android/server/wm/AppWindowToken;
    :cond_102
    monitor-exit v0
    :try_end_103
    .catchall {:try_start_42 .. :try_end_103} :catchall_119

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 459
    :cond_107
    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    :try_start_10a
    iget-boolean v7, v1, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    move-object v2, v1

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/AppWindowToken;->setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    .line 460
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 461
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    monitor-exit v0
    :try_end_115
    .catchall {:try_start_10a .. :try_end_115} :catchall_119

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 462
    return-void

    .line 461
    :catchall_119
    move-exception v1

    :try_start_11a
    monitor-exit v0
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_119

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWillCloseOrEnterPip(Z)V
    .registers 4
    .param p1, "willCloseOrEnterPip"    # Z

    .line 882
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 883
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_f

    .line 884
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 887
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->setWillCloseOrEnterPip(Z)V

    .line 888
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 889
    return-void

    .line 888
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startFreezingScreen(I)V
    .registers 6
    .param p1, "configChanges"    # I

    .line 817
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 818
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_27

    .line 819
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 824
    :cond_27
    if-nez p1, :cond_38

    :try_start_29
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->okToDisplay()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 826
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 829
    :cond_38
    :try_start_38
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->startFreezingScreen()V

    .line 830
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 831
    return-void

    .line 830
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public stopFreezingScreen(Z)V
    .registers 5
    .param p1, "force"    # Z

    .line 834
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 835
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_f

    .line 836
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 840
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    .line 841
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 842
    return-void

    .line 841
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWindowContainerController{ token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
