.class Lcom/android/server/wm/WindowSurfacePlacer;
.super Ljava/lang/Object;
.source "WindowSurfacePlacer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;
    }
.end annotation


# static fields
.field static final SET_FORCE_HIDING_CHANGED:I = 0x4

.field static final SET_ORIENTATION_CHANGE_COMPLETE:I = 0x8

.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_ACTION_PENDING:I = 0x10

.field static final SET_WALLPAPER_MAY_CHANGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mDeferDepth:I

.field private mInLayout:Z

.field private mLayoutRepeatCount:I

.field private final mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerformSurfacePlacement:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempTransitionReasons:Landroid/util/SparseIntArray;

.field private final mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

.field private mTraversalScheduled:Z

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 106
    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 112
    new-instance v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;-><init>(Lcom/android/server/wm/WindowSurfacePlacer$1;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    .line 114
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    .line 125
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 127
    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$4Hbamt-LFcbu8AoZBoOZN_LveKQ;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$4Hbamt-LFcbu8AoZBoOZN_LveKQ;-><init>(Lcom/android/server/wm/WindowSurfacePlacer;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    .line 132
    return-void
.end method

.method private canBeWallpaperTarget(Landroid/util/ArraySet;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .line 825
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_18

    .line 826
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 827
    return v1

    .line 825
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 830
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 448
    .local p1, "array1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, "array2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 449
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_21

    .line 450
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 449
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 452
    .end local v1    # "i":I
    :cond_21
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_27
    if-ltz v1, :cond_3d

    .line 453
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 452
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    .line 455
    .end local v1    # "i":I
    :cond_3d
    return-object v0
.end method

.method private containsVoiceInteraction(Landroid/util/ArraySet;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .line 478
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_16

    .line 479
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    if-eqz v2, :cond_13

    .line 480
    return v1

    .line 478
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 483
    .end local v0    # "i":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private findAnimLayoutParamsToken(ILandroid/util/ArraySet;)Lcom/android/server/wm/AppWindowToken;
    .registers 7
    .param p1, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/wm/AppWindowToken;"
        }
    .end annotation

    .line 427
    .local p2, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$AnzDJL6vBWwhbuz7sYsAfUAzZko;

    invoke-direct {v2, p1, p2}, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$AnzDJL6vBWwhbuz7sYsAfUAzZko;-><init>(ILandroid/util/ArraySet;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 430
    .local v0, "result":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_14

    .line 431
    return-object v0

    .line 433
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    sget-object v3, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$wCevQN6hMxiB97Eay8ibpi2Xaxo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$wCevQN6hMxiB97Eay8ibpi2Xaxo;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_25

    .line 436
    return-object v0

    .line 438
    :cond_25
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    sget-object v3, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$tJcqA51ohv9DQjcvHOarwInr01s;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$tJcqA51ohv9DQjcvHOarwInr01s;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    return-object v1
.end method

.method private static getAnimLp(Lcom/android/server/wm/AppWindowToken;)Landroid/view/WindowManager$LayoutParams;
    .registers 3
    .param p0, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .line 393
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    .line 394
    .local v1, "mainWindow":Lcom/android/server/wm/WindowState;
    :goto_9
    if-eqz v1, :cond_e

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    nop

    :cond_e
    return-object v0
.end method

.method private getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;
    .registers 8
    .param p2, "ignoreHidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;Z)",
            "Lcom/android/server/wm/AppWindowToken;"
        }
    .end annotation

    .line 842
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/high16 v0, -0x80000000

    .line 843
    .local v0, "topPrefixOrderIndex":I
    const/4 v1, 0x0

    .line 844
    .local v1, "topApp":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_25

    .line 845
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 846
    .local v3, "app":Lcom/android/server/wm/AppWindowToken;
    if-eqz p2, :cond_1a

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 847
    goto :goto_22

    .line 849
    :cond_1a
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v4

    .line 850
    .local v4, "prefixOrderIndex":I
    if-le v4, v0, :cond_22

    .line 851
    move v0, v4

    .line 852
    move-object v1, v3

    .line 844
    .end local v3    # "app":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "prefixOrderIndex":I
    :cond_22
    :goto_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 855
    .end local v2    # "i":I
    :cond_25
    return-object v1
.end method

.method private handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V
    .registers 15
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z
    .param p4, "layerAndToken"    # Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    .line 537
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 538
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 542
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 543
    .local v0, "appsCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_17
    if-ge v2, v0, :cond_9b

    .line 544
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 547
    .local v3, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->isCastMode:Z

    if-eqz v4, :cond_3e

    .line 548
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is in small window mode, don\'t close it"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    goto :goto_97

    .line 556
    :cond_3e
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, v3

    move-object v5, p2

    move v7, p1

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/AppWindowToken;->setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    .line 557
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 561
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 562
    iput-boolean v1, v3, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 565
    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_66

    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v5, :cond_66

    .line 566
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v5

    if-eqz v5, :cond_66

    .line 567
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    .line 570
    :cond_66
    if-eqz p2, :cond_78

    .line 571
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayer()I

    move-result v5

    .line 572
    .local v5, "layer":I
    iget-object v6, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_74

    iget v6, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    if-le v5, v6, :cond_78

    .line 573
    :cond_74
    iput-object v3, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 574
    iput v5, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    .line 578
    .end local v5    # "layer":I
    :cond_78
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->needCreateMiuiThumbnail()Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 579
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-virtual {v3, v4}, Lcom/android/server/wm/AppWindowToken;->attachThumbnailAnimation(Z)V

    .line 584
    :cond_8a
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailDown()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 585
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->attachThumbnailAnimation()V

    .line 543
    .end local v3    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_97
    :goto_97
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_17

    .line 588
    .end local v2    # "i":I
    :cond_9b
    return-void
.end method

.method private handleDummyVisibleApps(ILandroid/view/WindowManager$LayoutParams;Z)V
    .registers 6
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z

    .line 593
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDummyVisibleApp:Lcom/android/server/wm/AppWindowToken;

    .line 594
    .local v0, "dummyVisibleApp":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_7

    .line 595
    return-void

    .line 598
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDummyVisibleAppEnter:Z

    invoke-virtual {v0, p2, p1, v1, p3}, Lcom/android/server/wm/AppWindowToken;->applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z

    .line 600
    return-void
.end method

.method private handleNonAppWindowsInTransition(II)V
    .registers 8
    .param p1, "transit"    # I
    .param p2, "flags"    # I

    .line 604
    const/16 v0, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2a

    .line 605
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_2a

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_2a

    .line 607
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_18

    move v4, v2

    goto :goto_19

    :cond_18
    move v4, v1

    :goto_19
    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;

    move-result-object v3

    .line 609
    .local v3, "anim":Landroid/view/animation/Animation;
    if-eqz v3, :cond_2a

    .line 610
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 611
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WallpaperController;->startWallpaperAnimation(Landroid/view/animation/Animation;)V

    .line 615
    .end local v3    # "anim":Landroid/view/animation/Animation;
    :cond_2a
    const/16 v3, 0x15

    if-eq p1, v0, :cond_30

    if-ne p1, v3, :cond_44

    .line 617
    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-ne p1, v3, :cond_3a

    move v3, v2

    goto :goto_3b

    :cond_3a
    move v3, v1

    :goto_3b
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_41

    move v1, v2

    nop

    :cond_41
    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/DisplayContent;->startKeyguardExitOnNonAppWindows(ZZ)V

    .line 621
    :cond_44
    return-void
.end method

.method private handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;Z)Lcom/android/server/wm/AppWindowToken;
    .registers 16
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    const/high16 v1, -0x80000000

    .line 490
    .local v1, "topOpeningLayer":I
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 491
    .local v2, "appsCount":I
    const/4 v3, 0x0

    move v4, v1

    move-object v1, v0

    move v0, v3

    .local v0, "i":I
    .local v1, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .local v4, "topOpeningLayer":I
    :goto_f
    if-ge v0, v2, :cond_7b

    .line 492
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 495
    .local v5, "wtoken":Lcom/android/server/wm/AppWindowToken;
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v6, v5

    move-object v7, p2

    move v9, p1

    move v11, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/AppWindowToken;->setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    move-result v6

    if-nez v6, :cond_33

    .line 499
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v7, v5, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->cancelMiuiThumbnailAnimationLocked()V

    .line 505
    :cond_33
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 506
    iput-boolean v3, v5, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 509
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 511
    :try_start_3d
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_72

    .line 513
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v7, "handleAppTransitionReadyLocked"

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 516
    nop

    .line 518
    if-eqz p2, :cond_54

    .line 519
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayer()I

    move-result v6

    .line 520
    .local v6, "layer":I
    if-eqz v1, :cond_52

    if-le v6, v4, :cond_54

    .line 521
    :cond_52
    move-object v1, v5

    .line 522
    move v4, v6

    .line 525
    .end local v6    # "layer":I
    :cond_54
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailUp()Z

    move-result v6

    if-eqz v6, :cond_62

    .line 526
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->attachThumbnailAnimation()V

    goto :goto_6f

    .line 527
    :cond_62
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionOpenCrossProfileApps()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 528
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->attachCrossProfileAppsThumbnailAnimation()V

    .line 491
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_6f
    :goto_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 513
    .restart local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_72
    move-exception v3

    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v7, "handleAppTransitionReadyLocked"

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v3

    .line 531
    .end local v0    # "i":I
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_7b
    return-object v1
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$1(ILandroid/util/ArraySet;Lcom/android/server/wm/AppWindowToken;)Z
    .registers 4
    .param p0, "transit"    # I
    .param p1, "activityTypes"    # Landroid/util/ArraySet;
    .param p2, "w"    # Lcom/android/server/wm/AppWindowToken;

    .line 428
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 429
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/view/RemoteAnimationDefinition;->hasTransition(ILandroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 428
    :goto_13
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$2(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/AppWindowToken;

    .line 434
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$3(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/AppWindowToken;

    .line 439
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/WindowSurfacePlacer;)V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 129
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 130
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 131
    return-void

    .line 130
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)",
            "Lcom/android/server/wm/AppWindowToken;"
        }
    .end annotation

    .line 460
    .local p1, "array1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, "array2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p3, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 461
    .local v0, "array1count":I
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 462
    .local v1, "count":I
    const/high16 v2, -0x80000000

    .line 463
    .local v2, "bestPrefixOrderIndex":I
    const/4 v3, 0x0

    .line 464
    .local v3, "bestToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    if-ge v4, v1, :cond_31

    .line 465
    if-ge v4, v0, :cond_18

    .line 466
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    goto :goto_20

    .line 467
    :cond_18
    sub-int v5, v4, v0

    invoke-virtual {p2, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 468
    .local v5, "wtoken":Lcom/android/server/wm/AppWindowToken;
    :goto_20
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v6

    .line 469
    .local v6, "prefixOrderIndex":I
    invoke-interface {p3, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    if-le v6, v2, :cond_2e

    .line 470
    move v2, v6

    .line 471
    move-object v3, v5

    .line 464
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v6    # "prefixOrderIndex":I
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 474
    .end local v4    # "i":I
    :cond_31
    return-object v3
.end method

.method private maybeUpdateTransitToWallpaper(IZZ)I
    .registers 14
    .param p1, "transit"    # I
    .param p2, "openingAppHasWallpaper"    # Z
    .param p3, "closingAppHasWallpaper"    # Z

    .line 703
    if-eqz p1, :cond_ae

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_ae

    const/16 v0, 0x13

    if-ne p1, v0, :cond_c

    goto/16 :goto_ae

    .line 709
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 710
    .local v0, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTargetAnimating()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 711
    const/4 v1, 0x0

    goto :goto_1d

    :cond_1c
    move-object v1, v0

    .line 712
    .local v1, "oldWallpaper":Lcom/android/server/wm/WindowState;
    :goto_1d
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    .line 713
    .local v2, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    .line 714
    .local v3, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    .line 716
    .local v4, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/server/wm/WindowSurfacePlacer;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v6

    .line 719
    .local v6, "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v8

    .line 727
    .local v8, "openingCanBeWallpaperTarget":Z
    iget-object v9, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDummyVisibleApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v9, :cond_43

    move v5, v7

    nop

    .line 728
    .local v5, "hasDummyApp":Z
    :cond_43
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowManagerService;->mDummyVisibleAppEnter:Z

    .line 730
    .local v7, "isDummyAppEnter":Z
    if-eqz v8, :cond_50

    const/16 v9, 0x14

    if-ne p1, v9, :cond_50

    .line 731
    const/16 p1, 0x15

    goto :goto_ad

    .line 737
    :cond_50
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v9

    if-nez v9, :cond_ad

    .line 738
    if-eqz p3, :cond_65

    if-eqz p2, :cond_65

    .line 740
    packed-switch p1, :pswitch_data_b0

    goto :goto_64

    .line 749
    :pswitch_5e
    const/16 p1, 0xf

    goto :goto_64

    .line 744
    :pswitch_61
    const/16 p1, 0xe

    .line 745
    nop

    .line 750
    :goto_64
    goto :goto_ad

    .line 754
    :cond_65
    if-eqz v1, :cond_88

    iget-object v9, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_88

    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 755
    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_88

    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 756
    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_88

    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v6, v9, :cond_88

    .line 759
    const/16 p1, 0xc

    goto :goto_ad

    .line 762
    :cond_88
    if-eqz v0, :cond_a3

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v9

    if-eqz v9, :cond_a3

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 763
    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a3

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v4, v9, :cond_a3

    const/16 v9, 0x19

    if-eq p1, v9, :cond_a3

    .line 768
    const/16 p1, 0xd

    goto :goto_ad

    .line 772
    :cond_a3
    if-eqz v5, :cond_ad

    .line 773
    if-eqz v7, :cond_aa

    const/16 v9, 0xd

    goto :goto_ac

    :cond_aa
    const/16 v9, 0xc

    :goto_ac
    move p1, v9

    .line 777
    :cond_ad
    :goto_ad
    return p1

    .line 705
    .end local v0    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v1    # "oldWallpaper":Lcom/android/server/wm/WindowState;
    .end local v2    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v3    # "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v4    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .end local v5    # "hasDummyApp":Z
    .end local v6    # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v7    # "isDummyAppEnter":Z
    .end local v8    # "openingCanBeWallpaperTarget":Z
    :cond_ae
    :goto_ae
    return p1

    nop

    :pswitch_data_b0
    .packed-switch 0x6
        :pswitch_61
        :pswitch_5e
        :pswitch_61
        :pswitch_5e
        :pswitch_61
        :pswitch_5e
    .end packed-switch
.end method

.method private overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)V
    .registers 7
    .param p1, "animLpToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/AppWindowToken;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 403
    .local p3, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_5

    .line 405
    return-void

    .line 407
    :cond_5
    if-nez p1, :cond_8

    .line 408
    return-void

    .line 410
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    .line 411
    .local v0, "definition":Landroid/view/RemoteAnimationDefinition;
    if-eqz v0, :cond_1b

    .line 412
    invoke-virtual {v0, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    .line 413
    .local v1, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v1, :cond_1b

    .line 414
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 417
    .end local v1    # "adapter":Landroid/view/RemoteAnimationAdapter;
    :cond_1b
    return-void
.end method

.method private performSurfacePlacementLoop()V
    .registers 10

    .line 174
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    if-eqz v0, :cond_21

    .line 178
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performLayoutAndPlaceSurfacesLocked called while in layout. Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 179
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 183
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v0, :cond_28

    .line 187
    return-void

    .line 190
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v0, :cond_2f

    .line 192
    return-void

    .line 195
    :cond_2f
    const-string/jumbo v0, "wmLayout"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 198
    const/4 v3, 0x0

    .line 199
    .local v3, "recoveringMemory":Z
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_91

    .line 200
    const/4 v4, 0x1

    .line 202
    .end local v3    # "recoveringMemory":Z
    .local v4, "recoveringMemory":Z
    :goto_47
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_75

    .line 203
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 204
    .local v3, "ws":Lcom/android/server/wm/WindowState;
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Force removing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 206
    .end local v3    # "ws":Lcom/android/server/wm/WindowState;
    goto :goto_47

    .line 207
    :cond_75
    const-string v3, "WindowManager"

    const-string v6, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v6, v3

    .line 209
    .local v6, "tmp":Ljava/lang/Object;
    monitor-enter v6

    .line 211
    const-wide/16 v7, 0xfa

    :try_start_85
    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_88
    .catch Ljava/lang/InterruptedException; {:try_start_85 .. :try_end_88} :catch_8b
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    .line 213
    goto :goto_8c

    .line 214
    :catchall_89
    move-exception v0

    goto :goto_8f

    .line 212
    :catch_8b
    move-exception v3

    .line 214
    :goto_8c
    :try_start_8c
    monitor-exit v6

    .line 218
    move v3, v4

    goto :goto_91

    .line 214
    :goto_8f
    monitor-exit v6
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_89

    throw v0

    .line 218
    .end local v4    # "recoveringMemory":Z
    .end local v6    # "tmp":Ljava/lang/Object;
    .local v3, "recoveringMemory":Z
    :cond_91
    :goto_91
    :try_start_91
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement(Z)V

    .line 220
    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 222
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 223
    iget v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v0, 0x6

    if-ge v4, v0, :cond_b0

    .line 224
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    goto :goto_bc

    .line 226
    :cond_b0
    const-string v0, "WindowManager"

    const-string v4, "Performed 6 layouts in a row. Skipping"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    goto :goto_bc

    .line 230
    :cond_ba
    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    .line 233
    :goto_bc
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v0, :cond_dc

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_dc

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x13

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_dc
    .catch Ljava/lang/RuntimeException; {:try_start_91 .. :try_end_dc} :catch_dd

    .line 240
    :cond_dc
    goto :goto_e7

    .line 237
    :catch_dd
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/RuntimeException;
    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 239
    const-string v4, "WindowManager"

    const-string v5, "Unhandled exception while laying out windows"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_e7
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 243
    return-void
.end method

.method private processApplicationsAnimatingInPlace(I)V
    .registers 6
    .param p1, "transit"    # I

    .line 859
    const/16 v0, 0x11

    if-ne p1, v0, :cond_20

    .line 861
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 862
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_20

    .line 863
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 866
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 867
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, v3}, Lcom/android/server/wm/AppWindowToken;->applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z

    .line 868
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 869
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 872
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_20
    return-void
.end method

.method private transitionGoodToGo(ILandroid/util/SparseIntArray;)Z
    .registers 11
    .param p1, "appsCount"    # I
    .param p2, "outReasons"    # Landroid/util/SparseIntArray;

    .line 628
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 629
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    .line 632
    .local v0, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    .line 633
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_97

    .line 640
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 641
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->rotationNeedsUpdateLocked()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 645
    return v1

    .line 647
    :cond_28
    move v2, v1

    .local v2, "i":I
    :goto_29
    if-ge v2, p1, :cond_69

    .line 648
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .line 658
    .local v4, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v5, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v5, :cond_41

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v5

    if-nez v5, :cond_41

    move v5, v3

    goto :goto_42

    :cond_41
    move v5, v1

    .line 659
    .local v5, "allDrawn":Z
    :goto_42
    if-nez v5, :cond_4d

    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v6, :cond_4d

    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v6, :cond_4d

    .line 660
    return v1

    .line 662
    :cond_4d
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v6

    .line 663
    .local v6, "windowingMode":I
    if-eqz v5, :cond_58

    .line 664
    const/4 v7, 0x2

    invoke-virtual {p2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_66

    .line 666
    :cond_58
    nop

    .line 667
    iget-object v7, v4, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    instance-of v7, v7, Lcom/android/server/wm/SplashScreenStartingData;

    if-eqz v7, :cond_62

    .line 668
    nop

    .line 666
    move v7, v3

    goto :goto_63

    .line 669
    :cond_62
    const/4 v7, 0x4

    .line 666
    :goto_63
    invoke-virtual {p2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 647
    .end local v4    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v5    # "allDrawn":Z
    .end local v6    # "windowingMode":I
    :goto_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 674
    .end local v2    # "i":I
    :cond_69
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isFetchingAppTransitionsSpecs()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 676
    return v1

    .line 679
    :cond_74
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v2

    if-nez v2, :cond_7f

    .line 684
    return v1

    .line 688
    :cond_7f
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v2

    if-eqz v2, :cond_92

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 689
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result v2

    if-eqz v2, :cond_90

    goto :goto_92

    :cond_90
    move v2, v1

    goto :goto_93

    :cond_92
    :goto_92
    move v2, v3

    .line 690
    .local v2, "wallpaperReady":Z
    :goto_93
    if-eqz v2, :cond_96

    .line 691
    return v3

    .line 693
    :cond_96
    return v1

    .line 695
    .end local v2    # "wallpaperReady":Z
    :cond_97
    return v3
.end method


# virtual methods
.method cancelMiuiThumbnailAnimationLocked()V
    .registers 3

    .line 889
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 890
    .local v1, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_17

    .line 891
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->clearMiuiThumbnailAnimation()V

    .line 893
    .end local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_17
    goto :goto_6

    .line 894
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 895
    return-void
.end method

.method continueLayout()V
    .registers 2

    .line 145
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 146
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-gtz v0, :cond_d

    .line 147
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 149
    :cond_d
    return-void
.end method

.method debugLayoutRepeats(Ljava/lang/String;I)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "pendingLayoutChanges"    # I

    .line 246
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_27

    .line 247
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layouts looping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mPendingLayoutChanges = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_27
    return-void
.end method

.method deferLayout()V
    .registers 2

    .line 138
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 139
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mTraversalScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mHoldScreenWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mObscuringWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 885
    return-void
.end method

.method handleAppTransitionReadyLocked()I
    .registers 25

    .line 260
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 261
    .local v2, "appsCount":I
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->transitionGoodToGo(ILandroid/util/SparseIntArray;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_14

    .line 262
    return v3

    .line 264
    :cond_14
    const-string v0, "AppTransitionReady"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 267
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    .line 268
    .local v0, "transit":I
    iget-object v6, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    if-eqz v6, :cond_30

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v6

    if-nez v6, :cond_30

    .line 269
    const/4 v0, -0x1

    .line 271
    :cond_30
    iget-object v6, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v6, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 272
    iget-object v6, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 274
    iget-object v6, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 276
    iget-object v6, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 278
    .local v6, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v7, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v3, v7, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    .line 281
    move v7, v3

    .local v7, "i":I
    :goto_51
    if-ge v7, v2, :cond_63

    .line 282
    iget-object v8, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 287
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowToken;->clearAnimatingFlags()V

    .line 281
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    .line 293
    :cond_63
    iget-object v8, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v9, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v8, v6, v9}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindowsForAppTransitionIfNeeded(Lcom/android/server/wm/DisplayContent;Landroid/util/ArraySet;)V

    .line 298
    iget-object v8, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v8}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v8

    if-eqz v8, :cond_76

    const/4 v8, 0x1

    goto :goto_77

    :cond_76
    move v8, v3

    .line 299
    .local v8, "hasWallpaperTarget":Z
    :goto_77
    iget-object v10, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {v1, v10}, Lcom/android/server/wm/WindowSurfacePlacer;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v10

    if-eqz v10, :cond_85

    if-eqz v8, :cond_85

    const/4 v10, 0x1

    goto :goto_86

    :cond_85
    move v10, v3

    .line 301
    .local v10, "openingAppHasWallpaper":Z
    :goto_86
    iget-object v11, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {v1, v11}, Lcom/android/server/wm/WindowSurfacePlacer;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v11

    if-eqz v11, :cond_94

    if-eqz v8, :cond_94

    const/4 v11, 0x1

    goto :goto_95

    :cond_94
    move v11, v3

    .line 304
    .local v11, "closingAppHasWallpaper":Z
    :goto_95
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->maybeUpdateTransitToTranslucentAnim(I)I

    move-result v0

    .line 305
    invoke-direct {v1, v0, v10, v11}, Lcom/android/server/wm/WindowSurfacePlacer;->maybeUpdateTransitToWallpaper(IZZ)I

    move-result v15

    .line 312
    .end local v0    # "transit":I
    .local v15, "transit":I
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v12, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {v1, v0, v12}, Lcom/android/server/wm/WindowSurfacePlacer;->collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v14

    .line 314
    .local v14, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_b9

    .line 315
    invoke-direct {v1, v15, v14}, Lcom/android/server/wm/WindowSurfacePlacer;->findAnimLayoutParamsToken(ILandroid/util/ArraySet;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    goto :goto_ba

    .line 316
    :cond_b9
    move-object v0, v13

    :goto_ba
    move-object v12, v0

    .line 318
    .local v12, "animLpToken":Lcom/android/server/wm/AppWindowToken;
    invoke-static {v12}, Lcom/android/server/wm/WindowSurfacePlacer;->getAnimLp(Lcom/android/server/wm/AppWindowToken;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 319
    .local v4, "animLp":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {v1, v12, v15, v14}, Lcom/android/server/wm/WindowSurfacePlacer;->overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)V

    .line 321
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_d9

    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    .line 322
    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_d7

    goto :goto_d9

    :cond_d7
    move v0, v3

    goto :goto_da

    :cond_d9
    :goto_d9
    const/4 v0, 0x1

    :goto_da
    move v5, v0

    .line 325
    .local v5, "voiceInteraction":Z
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    .line 327
    :try_start_e2
    invoke-direct {v1, v15}, Lcom/android/server/wm/WindowSurfacePlacer;->processApplicationsAnimatingInPlace(I)V

    .line 329
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    iput-object v13, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 331
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v13, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v13}, Lcom/android/server/wm/AppTransition;->updateAllowCustomAnimationIfNeeded(Landroid/util/ArraySet;)V

    .line 332
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    invoke-direct {v1, v15, v4, v5, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V

    .line 333
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 334
    .local v0, "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    invoke-direct {v1, v15, v4, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v13

    .line 338
    .local v13, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    invoke-direct {v1, v15, v4, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->handleDummyVisibleApps(ILandroid/view/WindowManager$LayoutParams;Z)V

    .line 340
    iget-object v9, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v9, v15, v13, v0}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 342
    iget-object v9, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v9}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v9

    .line 343
    .local v9, "flags":I
    iget-object v3, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;
    :try_end_117
    .catchall {:try_start_e2 .. :try_end_117} :catchall_1df

    move/from16 v19, v2

    :try_start_119
    iget-object v2, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .end local v2    # "appsCount":I
    .local v19, "appsCount":I
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;
    :try_end_11d
    .catchall {:try_start_119 .. :try_end_11d} :catchall_1d4

    move-object/from16 v20, v4

    :try_start_11f
    iget-object v4, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .end local v4    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .local v20, "animLp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;
    :try_end_123
    .catchall {:try_start_11f .. :try_end_123} :catchall_1cb

    move-object/from16 v21, v12

    move-object v12, v3

    .end local v12    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .local v21, "animLpToken":Lcom/android/server/wm/AppWindowToken;
    move/from16 v22, v5

    move-object v3, v13

    const/4 v5, 0x0

    move v13, v15

    .end local v5    # "voiceInteraction":Z
    .end local v13    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .local v3, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .local v22, "voiceInteraction":Z
    move-object/from16 v18, v14

    move-object v14, v3

    .end local v14    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v18, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move v5, v15

    move-object v15, v0

    .end local v15    # "transit":I
    .local v5, "transit":I
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    :try_start_134
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/wm/AppTransition;->goodToGo(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;Landroid/util/ArraySet;Landroid/util/ArraySet;)I

    move-result v2

    .line 345
    .local v2, "layoutRedo":I
    invoke-direct {v1, v5, v9}, Lcom/android/server/wm/WindowSurfacePlacer;->handleNonAppWindowsInTransition(II)V

    .line 346
    iget-object v4, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 347
    iget-object v4, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 349
    if-eqz v3, :cond_15e

    iget-object v4, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v3, v4, :cond_15e

    .line 350
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 351
    .local v4, "topOpeningTask":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_15e

    .line 352
    const v12, 0x7fffffff

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v3, v13}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/AppWindowToken;Z)V
    :try_end_15e
    .catchall {:try_start_134 .. :try_end_15e} :catchall_1c9

    .line 357
    .end local v0    # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "topOpeningTask":Lcom/android/server/wm/Task;
    .end local v9    # "flags":I
    :cond_15e
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 358
    nop

    .line 357
    move v0, v2

    .line 360
    .end local v2    # "layoutRedo":I
    .local v0, "layoutRedo":I
    iget-object v2, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskSnapshotController;->onTransitionStarting()V

    .line 362
    iget-object v2, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 363
    iget-object v2, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 365
    iget-object v2, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mDummyVisibleApp:Lcom/android/server/wm/AppWindowToken;

    .line 366
    iget-object v2, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    .line 370
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 373
    iget-object v2, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 374
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 375
    iget-object v4, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x2

    invoke-virtual {v4, v9, v3}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 377
    iget-object v3, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 379
    iget-object v3, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x2f

    iget-object v12, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    .line 380
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v12

    .line 379
    invoke-virtual {v3, v4, v12}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 380
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 383
    iget-object v3, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v3}, Lcom/android/server/wm/MiuiGestureController;->disabledAppTransitionSkipped()V

    .line 384
    iget-object v3, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setLoadBackHomeAnimation(Z)V

    .line 387
    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 389
    or-int/lit8 v3, v0, 0x1

    or-int/2addr v3, v9

    return v3

    .line 357
    .end local v0    # "layoutRedo":I
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    :catchall_1c9
    move-exception v0

    goto :goto_1eb

    .end local v18    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v21    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .end local v22    # "voiceInteraction":Z
    .local v5, "voiceInteraction":Z
    .restart local v12    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v14    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v15    # "transit":I
    :catchall_1cb
    move-exception v0

    move/from16 v22, v5

    move-object/from16 v21, v12

    move-object/from16 v18, v14

    move v5, v15

    .end local v12    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .end local v14    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v15    # "transit":I
    .local v5, "transit":I
    .restart local v18    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v21    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v22    # "voiceInteraction":Z
    goto :goto_1eb

    .end local v18    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v20    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v21    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .end local v22    # "voiceInteraction":Z
    .local v4, "animLp":Landroid/view/WindowManager$LayoutParams;
    .local v5, "voiceInteraction":Z
    .restart local v12    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v14    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v15    # "transit":I
    :catchall_1d4
    move-exception v0

    move-object/from16 v20, v4

    move/from16 v22, v5

    move-object/from16 v21, v12

    move-object/from16 v18, v14

    move v5, v15

    .end local v4    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .end local v14    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v15    # "transit":I
    .local v5, "transit":I
    .restart local v18    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v20    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .restart local v21    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v22    # "voiceInteraction":Z
    goto :goto_1eb

    .end local v18    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v19    # "appsCount":I
    .end local v20    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v21    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .end local v22    # "voiceInteraction":Z
    .local v2, "appsCount":I
    .restart local v4    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .local v5, "voiceInteraction":Z
    .restart local v12    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v14    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v15    # "transit":I
    :catchall_1df
    move-exception v0

    move/from16 v19, v2

    move-object/from16 v20, v4

    move/from16 v22, v5

    move-object/from16 v21, v12

    move-object/from16 v18, v14

    move v5, v15

    .end local v2    # "appsCount":I
    .end local v4    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .end local v14    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v15    # "transit":I
    .local v5, "transit":I
    .restart local v18    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v19    # "appsCount":I
    .restart local v20    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .restart local v21    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v22    # "voiceInteraction":Z
    :goto_1eb
    iget-object v2, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v2}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    throw v0
.end method

.method isInLayout()Z
    .registers 2

    .line 253
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    return v0
.end method

.method isLayoutDeferred()Z
    .registers 2

    .line 152
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method maybeUpdateTransitToTranslucentAnim(I)I
    .registers 9
    .param p1, "transit"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 794
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isTaskTransit(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 795
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isActivityTransit(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    move v0, v1

    .line 796
    .local v0, "taskOrActivity":Z
    :goto_11
    const/4 v2, 0x1

    .line 797
    .local v2, "allOpeningVisible":Z
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 798
    .local v3, "allTranslucentOpeningApps":Z
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_24
    if-ltz v4, :cond_41

    .line 799
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 800
    .local v5, "token":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v6

    if-nez v6, :cond_3e

    .line 801
    const/4 v2, 0x0

    .line 802
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 803
    const/4 v3, 0x0

    .line 798
    .end local v5    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_3e
    add-int/lit8 v4, v4, -0x1

    goto :goto_24

    .line 807
    .end local v4    # "i":I
    :cond_41
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v1

    .line 808
    .local v4, "allTranslucentClosingApps":Z
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v1

    .local v5, "i":I
    :goto_53
    move v1, v5

    .end local v5    # "i":I
    .local v1, "i":I
    if-ltz v1, :cond_6b

    .line 809
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v5

    if-eqz v5, :cond_68

    .line 810
    const/4 v4, 0x0

    .line 811
    goto :goto_6b

    .line 808
    :cond_68
    add-int/lit8 v5, v1, -0x1

    .end local v1    # "i":I
    .restart local v5    # "i":I
    goto :goto_53

    .line 815
    .end local v5    # "i":I
    :cond_6b
    :goto_6b
    if-eqz v0, :cond_74

    if-eqz v4, :cond_74

    if-eqz v2, :cond_74

    .line 816
    const/16 v1, 0x19

    return v1

    .line 818
    :cond_74
    if-eqz v0, :cond_85

    if-eqz v3, :cond_85

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 819
    const/16 v1, 0x18

    return v1

    .line 821
    :cond_85
    return p1
.end method

.method final performSurfacePlacement()V
    .registers 2

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 157
    return-void
.end method

.method final performSurfacePlacement(Z)V
    .registers 6
    .param p1, "force"    # Z

    .line 160
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v0, :cond_7

    if-nez p1, :cond_7

    .line 161
    return-void

    .line 163
    :cond_7
    const/4 v0, 0x6

    .line 165
    .local v0, "loopCount":I
    :cond_8
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 166
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementLoop()V

    .line 167
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    add-int/lit8 v0, v0, -0x1

    .line 169
    iget-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v2, :cond_1f

    if-gtz v0, :cond_8

    .line 170
    :cond_1f
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v1, v2, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 171
    return-void
.end method

.method requestTraversal()V
    .registers 3

    .line 875
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-nez v0, :cond_10

    .line 876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 877
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 879
    :cond_10
    return-void
.end method
