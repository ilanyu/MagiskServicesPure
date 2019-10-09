.class Lcom/android/server/am/ActivityDisplay;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "ActivityDisplay.java"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/ConfigurationContainer<",
        "Lcom/android/server/am/ActivityStack;",
        ">;",
        "Lcom/android/server/wm/WindowContainerListener;"
    }
.end annotation


# static fields
.field static final POSITION_BOTTOM:I = -0x80000000

.field static final POSITION_TOP:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityManager"

.field private static sNextFreeStackId:I


# instance fields
.field final mAllSleepTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManagerInternal$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentSplitScreenPrimaryActivity:Lcom/android/server/am/ActivityRecord;

.field mDisplay:Landroid/view/Display;

.field private mDisplayAccessUIDs:Landroid/util/IntArray;

.field mDisplayId:I

.field private mHomeStack:Lcom/android/server/am/ActivityStack;

.field mNeedWaitResumePrimaryActivity:Z

.field mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field private mPinnedStack:Lcom/android/server/am/ActivityStack;

.field private mRecentsStack:Lcom/android/server/am/ActivityStack;

.field private mSleeping:Z

.field private mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

.field private mStackOrderChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mTmpDisplaySize:Landroid/graphics/Point;

.field private mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/ActivityDisplay;->sNextFreeStackId:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .registers 4
    .param p1, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "displayId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 119
    iget-object v0, p1, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/view/Display;)V

    .line 120
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/view/Display;)V
    .registers 4
    .param p1, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "display"    # Landroid/view/Display;

    .line 122
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 102
    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    .line 103
    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    .line 104
    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    .line 108
    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mCurrentSplitScreenPrimaryActivity:Lcom/android/server/am/ActivityRecord;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityDisplay;->mNeedWaitResumePrimaryActivity:Z

    .line 113
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    .line 123
    iput-object p1, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 124
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    .line 125
    iput-object p2, p0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    .line 126
    invoke-virtual {p0}, Lcom/android/server/am/ActivityDisplay;->createWindowContainerController()Lcom/android/server/wm/DisplayWindowController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    .line 127
    invoke-virtual {p0}, Lcom/android/server/am/ActivityDisplay;->updateBounds()V

    .line 128
    return-void
.end method

.method private addStackReferenceIfNeeded(Lcom/android/server/am/ActivityStack;)V
    .registers 7
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 396
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v0

    .line 397
    .local v0, "activityType":I
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    .line 399
    .local v1, "windowingMode":I
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_41

    .line 400
    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-ne v4, p1, :cond_15

    goto :goto_3e

    .line 401
    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: home stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already exist on display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :cond_3e
    :goto_3e
    iput-object p1, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    goto :goto_77

    .line 405
    :cond_41
    if-ne v0, v2, :cond_77

    .line 406
    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_75

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    if-ne v4, p1, :cond_4c

    goto :goto_75

    .line 407
    :cond_4c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: recents stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already exist on display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 410
    :cond_75
    :goto_75
    iput-object p1, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    .line 412
    :cond_77
    :goto_77
    if-ne v1, v3, :cond_ae

    .line 413
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_ab

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    if-ne v2, p1, :cond_82

    goto :goto_ab

    .line 414
    :cond_82
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: pinned stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already exist on display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    :cond_ab
    :goto_ab
    iput-object p1, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_e7

    .line 419
    :cond_ae
    if-ne v1, v2, :cond_e7

    .line 420
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_e2

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    if-ne v2, p1, :cond_b9

    goto :goto_e2

    .line 421
    :cond_b9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: split-screen-primary stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already exist on display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 425
    :cond_e2
    :goto_e2
    iput-object p1, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    .line 426
    invoke-direct {p0}, Lcom/android/server/am/ActivityDisplay;->onSplitScreenModeActivated()V

    .line 428
    :cond_e7
    :goto_e7
    return-void
.end method

.method private alwaysCreateStack(II)Z
    .registers 5
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 238
    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    if-eq p1, v0, :cond_b

    const/4 v1, 0x5

    if-eq p1, v1, :cond_b

    const/4 v1, 0x4

    if-ne p1, v1, :cond_c

    :cond_b
    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private getNextStackId()I
    .registers 3

    .line 286
    sget v0, Lcom/android/server/am/ActivityDisplay;->sNextFreeStackId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/am/ActivityDisplay;->sNextFreeStackId:I

    return v0
.end method

.method private getTopInsertPosition(Lcom/android/server/am/ActivityStack;I)I
    .registers 6
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "candidatePosition"    # I

    .line 188
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 189
    .local v0, "position":I
    if-lez v0, :cond_20

    .line 190
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 191
    .local v1, "topStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_20

    if-eq v1, p1, :cond_20

    .line 193
    add-int/lit8 v0, v0, -0x1

    .line 196
    .end local v1    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_20
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private isWindowingModeSupported(IZZZZI)Z
    .registers 10
    .param p1, "windowingMode"    # I
    .param p2, "supportsMultiWindow"    # Z
    .param p3, "supportsSplitScreen"    # Z
    .param p4, "supportsFreeform"    # Z
    .param p5, "supportsPip"    # Z
    .param p6, "activityType"    # I

    .line 507
    const/4 v0, 0x1

    if-eqz p1, :cond_29

    if-ne p1, v0, :cond_6

    goto :goto_29

    .line 511
    :cond_6
    const/4 v1, 0x0

    if-nez p2, :cond_a

    .line 512
    return v1

    .line 515
    :cond_a
    const/4 v2, 0x3

    if-eq p1, v2, :cond_1e

    const/4 v2, 0x4

    if-ne p1, v2, :cond_11

    goto :goto_1e

    .line 521
    :cond_11
    if-nez p4, :cond_17

    const/4 v2, 0x5

    if-ne p1, v2, :cond_17

    .line 522
    return v1

    .line 525
    :cond_17
    if-nez p5, :cond_1d

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1d

    .line 526
    return v1

    .line 528
    :cond_1d
    return v0

    .line 517
    :cond_1e
    :goto_1e
    if-eqz p3, :cond_27

    .line 518
    invoke-static {p6}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_28

    .line 517
    :cond_27
    move v0, v1

    :goto_28
    return v0

    .line 509
    :cond_29
    :goto_29
    return v0
.end method

.method private onSplitScreenModeActivated()V
    .registers 9

    .line 475
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 478
    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_30

    .line 479
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 480
    .local v1, "otherStack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    if-eq v1, v2, :cond_2d

    .line 481
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v2

    if-nez v2, :cond_24

    .line 482
    goto :goto_2d

    .line 484
    :cond_24
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_39

    .line 478
    .end local v1    # "otherStack":Lcom/android/server/am/ActivityStack;
    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 489
    .end local v0    # "i":I
    :cond_30
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 490
    nop

    .line 491
    return-void

    .line 489
    :catchall_39
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private onSplitScreenModeDismissed()V
    .registers 10

    .line 446
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 449
    const/4 v0, 0x1

    :try_start_8
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 449
    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_2c

    .line 450
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 451
    .local v2, "otherStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v3

    if-nez v3, :cond_20

    .line 452
    goto :goto_29

    .line 454
    :cond_20
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_56

    .line 449
    .end local v2    # "otherStack":Lcom/android/server/am/ActivityStack;
    :goto_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 459
    .end local v1    # "i":I
    :cond_2c
    nop

    .line 460
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 461
    .local v0, "topFullscreenStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_4d

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityDisplay;->isTopStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 467
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v2, "onSplitScreenModeDismissed"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 468
    const-string/jumbo v1, "onSplitScreenModeDismissed"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 470
    :cond_4d
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 471
    .end local v0    # "topFullscreenStack":Lcom/android/server/am/ActivityStack;
    nop

    .line 472
    return-void

    .line 459
    :catchall_56
    move-exception v1

    .line 460
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 461
    .restart local v0    # "topFullscreenStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_77

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_77

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityDisplay;->isTopStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-nez v2, :cond_77

    .line 467
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v3, "onSplitScreenModeDismissed"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 468
    const-string/jumbo v2, "onSplitScreenModeDismissed"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 470
    :cond_77
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 471
    .end local v0    # "topFullscreenStack":Lcom/android/server/am/ActivityStack;
    throw v1
.end method

.method private onStackOrderChanged()V
    .registers 3

    .line 823
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 824
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;

    invoke-interface {v1}, Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;->onStackOrderChanged()V

    .line 823
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 826
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method private positionChildAt(Lcom/android/server/am/ActivityStack;I)V
    .registers 7
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "position"    # I

    .line 172
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityDisplay;->getTopInsertPosition(Lcom/android/server/am/ActivityStack;I)I

    move-result v0

    .line 174
    .local v0, "insertPosition":I
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 181
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v2

    .line 182
    iget-object v3, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne p2, v3, :cond_20

    const v3, 0x7fffffff

    goto :goto_21

    .line 181
    :cond_20
    move v3, v0

    :goto_21
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayWindowController;->positionChildAt(Lcom/android/server/wm/StackWindowController;I)V

    .line 184
    invoke-direct {p0}, Lcom/android/server/am/ActivityDisplay;->onStackOrderChanged()V

    .line 185
    return-void
.end method

.method private removeStackReferenceIfNeeded(Lcom/android/server/am/ActivityStack;)V
    .registers 4
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 431
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    .line 432
    iput-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    goto :goto_1f

    .line 433
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v0, :cond_f

    .line 434
    iput-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    goto :goto_1f

    .line 435
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v0, :cond_16

    .line 436
    iput-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_1f

    .line 437
    :cond_16
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v0, :cond_1f

    .line 438
    iput-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    .line 441
    invoke-direct {p0}, Lcom/android/server/am/ActivityDisplay;->onSplitScreenModeDismissed()V

    .line 443
    :cond_1f
    :goto_1f
    return-void
.end method

.method private shouldDestroyContentOnRemove()Z
    .registers 3

    .line 727
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRemoveMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method


# virtual methods
.method addChild(Lcom/android/server/am/ActivityStack;I)V
    .registers 4
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "position"    # I

    .line 140
    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_6

    .line 141
    const/4 p2, 0x0

    goto :goto_11

    .line 142
    :cond_6
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_11

    .line 143
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 147
    :cond_11
    :goto_11
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityDisplay;->addStackReferenceIfNeeded(Lcom/android/server/am/ActivityStack;)V

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityDisplay;->positionChildAt(Lcom/android/server/am/ActivityStack;I)V

    .line 149
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    .line 150
    return-void
.end method

.method public continueUpdateImeTarget()V
    .registers 2

    .line 839
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayWindowController;->continueUpdateImeTarget()V

    .line 840
    return-void
.end method

.method createStack(IIZ)Lcom/android/server/am/ActivityStack;
    .registers 12
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(IIZ)TT;"
        }
    .end annotation

    .line 302
    if-nez p2, :cond_3

    .line 305
    const/4 p2, 0x1

    .line 308
    :cond_3
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3a

    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 312
    .local v0, "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    if-nez v0, :cond_e

    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    goto :goto_3a

    .line 313
    .restart local v0    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of activityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " already on display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Can\'t have multiple."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 319
    .local v7, "service":Lcom/android/server/am/ActivityManagerService;
    iget-boolean v2, v7, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    iget-boolean v3, v7, Lcom/android/server/am/ActivityManagerService;->mSupportsSplitScreenMultiWindow:Z

    iget-boolean v4, v7, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    iget-boolean v5, v7, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    move-object v0, p0

    move v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityDisplay;->isWindowingModeSupported(IZZZZI)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 326
    if-nez p1, :cond_58

    .line 329
    invoke-virtual {p0}, Lcom/android/server/am/ActivityDisplay;->getWindowingMode()I

    move-result p1

    .line 330
    if-nez p1, :cond_58

    .line 332
    const/4 p1, 0x1

    .line 336
    :cond_58
    invoke-direct {p0}, Lcom/android/server/am/ActivityDisplay;->getNextStackId()I

    move-result v0

    .line 337
    .local v0, "stackId":I
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/am/ActivityDisplay;->createStackUnchecked(IIIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    .line 322
    .end local v0    # "stackId":I
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create stack for unsupported windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createStackUnchecked(IIIZ)Lcom/android/server/am/ActivityStack;
    .registers 14
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "stackId"    # I
    .param p4, "onTop"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(IIIZ)TT;"
        }
    .end annotation

    .line 343
    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 344
    new-instance v0, Lcom/android/server/am/PinnedActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {v0, p0, p3, v1, p4}, Lcom/android/server/am/PinnedActivityStack;-><init>(Lcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityStackSupervisor;Z)V

    return-object v0

    .line 346
    :cond_b
    new-instance v0, Lcom/android/server/am/ActivityStack;

    iget-object v5, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object v2, v0

    move-object v3, p0

    move v4, p3

    move v6, p1

    move v7, p2

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityStackSupervisor;IIZ)V

    return-object v0
.end method

.method protected createWindowContainerController()Lcom/android/server/wm/DisplayWindowController;
    .registers 3

    .line 131
    new-instance v0, Lcom/android/server/wm/DisplayWindowController;

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/DisplayWindowController;-><init>(Landroid/view/Display;Lcom/android/server/wm/WindowContainerListener;)V

    return-object v0
.end method

.method public deferUpdateImeTarget()V
    .registers 2

    .line 832
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayWindowController;->deferUpdateImeTarget()V

    .line 833
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, "myPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_56

    .line 846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mHomeStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 848
    :cond_56
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_74

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mRecentsStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    :cond_74
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_92

    .line 852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mPinnedStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    :cond_92
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_b0

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mSplitScreenPrimaryStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 857
    :cond_b0
    return-void
.end method

.method public dumpStacks(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 860
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_21

    .line 861
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 862
    if-lez v0, :cond_1e

    .line 863
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 860
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 866
    .end local v0    # "i":I
    :cond_21
    return-void
.end method

.method protected getChildAt(I)Lcom/android/server/am/ActivityStack;
    .registers 3
    .param p1, "index"    # I

    .line 672
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .registers 2

    .line 667
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getIndexOf(Lcom/android/server/am/ActivityStack;)I
    .registers 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 627
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;
    .registers 8
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(IIZ)TT;"
        }
    .end annotation

    .line 252
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityDisplay;->alwaysCreateStack(II)Z

    move-result v0

    if-nez v0, :cond_d

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 254
    .local v0, "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    if-eqz v0, :cond_d

    .line 255
    return-object v0

    .line 260
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_d
    const/4 v0, 0x2

    if-eq p2, v0, :cond_15

    if-eq p1, v0, :cond_15

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1d

    .line 262
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayWindowController;->isStackExisted(I)Z

    move-result v0

    .line 263
    .local v0, "isExitStack":Z
    if-nez v0, :cond_22

    .line 270
    .end local v0    # "isExitStack":Z
    :cond_1d
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityDisplay;->createStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0

    .line 264
    .restart local v0    # "isExitStack":Z
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStack: TaskStack already exist on display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " windowingMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "activityType"    # I
    .param p5, "onTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(",
            "Lcom/android/server/am/ActivityRecord;",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/server/am/TaskRecord;",
            "IZ)TT;"
        }
    .end annotation

    .line 281
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityDisplay;->resolveWindowingMode(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;I)I

    move-result v0

    .line 282
    .local v0, "windowingMode":I
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 677
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method getPinnedStack()Lcom/android/server/am/PinnedActivityStack;
    .registers 2

    .line 653
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    check-cast v0, Lcom/android/server/am/PinnedActivityStack;

    return-object v0
.end method

.method getPresentUIDs()Landroid/util/IntArray;
    .registers 4

    .line 719
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 720
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 721
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->getPresentUIDs(Landroid/util/IntArray;)V

    .line 722
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    goto :goto_b

    .line 723
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    return-object v0
.end method

.method getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    .line 645
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getStack(I)Lcom/android/server/am/ActivityStack;
    .registers 5
    .param p1, "stackId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(I)TT;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 201
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 202
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget v2, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v2, p1, :cond_17

    .line 203
    return-object v1

    .line 200
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 206
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method getStack(II)Lcom/android/server/am/ActivityStack;
    .registers 6
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(II)TT;"
        }
    .end annotation

    .line 215
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 216
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    return-object v0

    .line 217
    :cond_6
    const/4 v1, 0x3

    if-ne p2, v1, :cond_c

    .line 218
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    return-object v0

    .line 220
    :cond_c
    if-ne p1, v0, :cond_11

    .line 221
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    return-object v0

    .line 222
    :cond_11
    if-ne p1, v1, :cond_16

    .line 223
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    return-object v0

    .line 226
    :cond_16
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1e
    if-ltz v0, :cond_32

    .line 227
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 228
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 229
    return-object v1

    .line 226
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 232
    .end local v0    # "i":I
    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method

.method getStackAbove(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;
    .registers 4
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 740
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 741
    .local v0, "stackIndex":I
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return-object v1
.end method

.method getTopStack()Lcom/android/server/am/ActivityStack;
    .registers 3

    .line 599
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_1a

    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    :goto_1a
    return-object v0
.end method

.method getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;
    .registers 5
    .param p1, "windowingMode"    # I

    .line 617
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 618
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 619
    .local v1, "current":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne p1, v2, :cond_19

    .line 620
    return-object v1

    .line 617
    .end local v1    # "current":Lcom/android/server/am/ActivityStack;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 623
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method hasPinnedStack()Z
    .registers 2

    .line 657
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hasSplitScreenPrimaryStack()Z
    .registers 2

    .line 649
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isPrivate()Z
    .registers 2

    .line 681
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isSleeping()Z
    .registers 2

    .line 797
    iget-boolean v0, p0, Lcom/android/server/am/ActivityDisplay;->mSleeping:Z

    return v0
.end method

.method isTopNotPinnedStack(Lcom/android/server/am/ActivityStack;)Z
    .registers 7
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 607
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_21

    .line 608
    iget-object v3, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 609
    .local v3, "current":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 610
    if-ne v3, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1

    .line 607
    .end local v3    # "current":Lcom/android/server/am/ActivityStack;
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 613
    .end local v0    # "i":I
    :cond_21
    return v2
.end method

.method isTopStack(Lcom/android/server/am/ActivityStack;)Z
    .registers 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 603
    invoke-virtual {p0}, Lcom/android/server/am/ActivityDisplay;->getTopStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isUidPresent(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 685
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 686
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->isUidPresent(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 687
    const/4 v0, 0x1

    return v0

    .line 689
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1a
    goto :goto_6

    .line 690
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method moveStackBehindBottomMostVisibleStack(Lcom/android/server/am/ActivityStack;)V
    .registers 10
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 749
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 751
    return-void

    .line 755
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/am/ActivityStack;)V

    .line 758
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 759
    .local v1, "numStacks":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "stackNdx":I
    :goto_13
    if-ge v3, v1, :cond_42

    .line 760
    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 761
    .local v4, "s":Lcom/android/server/am/ActivityStack;
    if-ne v4, p1, :cond_20

    .line 762
    goto :goto_3f

    .line 764
    :cond_20
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    .line 765
    .local v5, "winMode":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2d

    const/4 v7, 0x4

    if-ne v5, v7, :cond_2b

    goto :goto_2d

    :cond_2b
    move v6, v2

    nop

    .line 767
    .local v6, "isValidWindowingMode":Z
    :cond_2d
    :goto_2d
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_3f

    if-eqz v6, :cond_3f

    .line 769
    add-int/lit8 v0, v3, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityDisplay;->positionChildAt(Lcom/android/server/am/ActivityStack;I)V

    .line 770
    goto :goto_42

    .line 759
    .end local v4    # "s":Lcom/android/server/am/ActivityStack;
    .end local v5    # "winMode":I
    .end local v6    # "isValidWindowingMode":Z
    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 773
    .end local v3    # "stackNdx":I
    :cond_42
    :goto_42
    return-void
.end method

.method moveStackBehindStack(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;)V
    .registers 7
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "behindStack"    # Lcom/android/server/am/ActivityStack;

    .line 781
    if-eqz p2, :cond_20

    if-ne p2, p1, :cond_5

    goto :goto_20

    .line 789
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 790
    .local v0, "stackIndex":I
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 791
    .local v1, "behindStackIndex":I
    if-gt v0, v1, :cond_16

    .line 792
    add-int/lit8 v2, v1, -0x1

    goto :goto_17

    :cond_16
    move v2, v1

    .line 793
    .local v2, "insertIndex":I
    :goto_17
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActivityDisplay;->positionChildAt(Lcom/android/server/am/ActivityStack;I)V

    .line 794
    return-void

    .line 782
    .end local v0    # "stackIndex":I
    .end local v1    # "behindStackIndex":I
    .end local v2    # "insertIndex":I
    :cond_20
    :goto_20
    return-void
.end method

.method onExitingSplitScreenMode()V
    .registers 2

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    .line 642
    return-void
.end method

.method onLockTaskPackagesUpdated()V
    .registers 3

    .line 631
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 632
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->onLockTaskPackagesUpdated()V

    .line 631
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 634
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/am/ActivityStack;)V
    .registers 2
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 391
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityDisplay;->removeStackReferenceIfNeeded(Lcom/android/server/am/ActivityStack;)V

    .line 392
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityDisplay;->addStackReferenceIfNeeded(Lcom/android/server/am/ActivityStack;)V

    .line 393
    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/am/ActivityStack;)V
    .registers 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityDisplay;->positionChildAt(Lcom/android/server/am/ActivityStack;I)V

    .line 167
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/am/ActivityStack;)V
    .registers 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 162
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityDisplay;->positionChildAt(Lcom/android/server/am/ActivityStack;I)V

    .line 163
    return-void
.end method

.method registerStackOrderChangedListener(Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;

    .line 810
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 811
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    :cond_d
    return-void
.end method

.method remove()V
    .registers 7

    .line 694
    invoke-direct {p0}, Lcom/android/server/am/ActivityDisplay;->shouldDestroyContentOnRemove()Z

    move-result v0

    .line 695
    .local v0, "destroyContentOnRemoval":Z
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2a

    .line 696
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 697
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v3, 0x1

    if-eqz v0, :cond_24

    .line 701
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 702
    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v4, v5, v1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveStackToDisplayLocked(IIZ)V

    .line 704
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->finishAllActivitiesLocked(Z)V

    goto :goto_29

    .line 709
    :cond_24
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 711
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_29
    goto :goto_4

    .line 713
    :cond_2a
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayWindowController;->removeContainer()V

    .line 714
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    .line 715
    return-void
.end method

.method removeChild(Lcom/android/server/am/ActivityStack;)V
    .registers 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 155
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityDisplay;->removeStackReferenceIfNeeded(Lcom/android/server/am/ActivityStack;)V

    .line 157
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    .line 158
    invoke-direct {p0}, Lcom/android/server/am/ActivityDisplay;->onStackOrderChanged()V

    .line 159
    return-void
.end method

.method varargs removeStacksInWindowingModes([I)V
    .registers 7
    .param p1, "windowingModes"    # [I

    .line 355
    if-eqz p1, :cond_39

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_39

    .line 359
    :cond_6
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_9
    if-ltz v0, :cond_38

    .line 360
    aget v1, p1, v0

    .line 361
    .local v1, "windowingMode":I
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_15
    if-ltz v2, :cond_35

    .line 362
    iget-object v3, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 363
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-nez v4, :cond_26

    .line 364
    goto :goto_32

    .line 366
    :cond_26
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    if-eq v4, v1, :cond_2d

    .line 367
    goto :goto_32

    .line 369
    :cond_2d
    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityStackSupervisor;->removeStack(Lcom/android/server/am/ActivityStack;)V

    .line 361
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_32
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 359
    .end local v1    # "windowingMode":I
    .end local v2    # "i":I
    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 372
    .end local v0    # "j":I
    :cond_38
    return-void

    .line 356
    :cond_39
    :goto_39
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .registers 7
    .param p1, "activityTypes"    # [I

    .line 375
    if-eqz p1, :cond_31

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_31

    .line 379
    :cond_6
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_9
    if-ltz v0, :cond_30

    .line 380
    aget v1, p1, v0

    .line 381
    .local v1, "activityType":I
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_15
    if-ltz v2, :cond_2d

    .line 382
    iget-object v3, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 383
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v4

    if-ne v4, v1, :cond_2a

    .line 384
    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityStackSupervisor;->removeStack(Lcom/android/server/am/ActivityStack;)V

    .line 381
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 379
    .end local v1    # "activityType":I
    .end local v2    # "i":I
    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 388
    .end local v0    # "j":I
    :cond_30
    return-void

    .line 376
    :cond_31
    :goto_31
    return-void
.end method

.method resolveWindowingMode(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;I)I
    .registers 21
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "task"    # Lcom/android/server/am/TaskRecord;
    .param p4, "activityType"    # I

    .line 535
    if-eqz p2, :cond_7

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 540
    .local v0, "windowingMode":I
    :goto_8
    if-nez v0, :cond_1e

    .line 541
    if-eqz p3, :cond_10

    .line 542
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v0

    .line 544
    :cond_10
    if-nez v0, :cond_18

    if-eqz p1, :cond_18

    .line 545
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v0

    .line 547
    :cond_18
    if-nez v0, :cond_1e

    .line 549
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityDisplay;->getWindowingMode()I

    move-result v0

    .line 554
    :cond_1e
    move-object/from16 v8, p0

    iget-object v1, v8, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 555
    .local v9, "service":Lcom/android/server/am/ActivityManagerService;
    iget-boolean v1, v9, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    .line 556
    .local v1, "supportsMultiWindow":Z
    iget-boolean v2, v9, Lcom/android/server/am/ActivityManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 557
    .local v2, "supportsSplitScreen":Z
    iget-boolean v3, v9, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    .line 558
    .local v3, "supportsFreeform":Z
    iget-boolean v4, v9, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    .line 559
    .local v4, "supportsPip":Z
    if-eqz v1, :cond_4b

    .line 560
    if-eqz p3, :cond_39

    .line 561
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    .line 562
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v2

    goto :goto_4b

    .line 564
    :cond_39
    if-eqz p1, :cond_4b

    .line 565
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result v1

    .line 566
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v2

    .line 567
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->supportsFreeform()Z

    move-result v3

    .line 568
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    move-result v4

    .line 572
    .end local v1    # "supportsMultiWindow":Z
    .end local v2    # "supportsSplitScreen":Z
    .end local v3    # "supportsFreeform":Z
    .end local v4    # "supportsPip":Z
    .local v10, "supportsSplitScreen":Z
    .local v11, "supportsMultiWindow":Z
    .local v12, "supportsFreeform":Z
    .local v13, "supportsPip":Z
    :cond_4b
    :goto_4b
    move v11, v1

    move v10, v2

    move v12, v3

    move v13, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v14

    .line 573
    .local v14, "inSplitScreenMode":Z
    const/4 v7, 0x1

    if-nez v14, :cond_5b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5b

    .line 577
    const/4 v0, 0x1

    goto :goto_62

    .line 578
    :cond_5b
    if-eqz v14, :cond_62

    if-ne v0, v7, :cond_62

    if-eqz v10, :cond_62

    .line 580
    const/4 v0, 0x4

    .line 583
    :cond_62
    :goto_62
    if-eqz v0, :cond_74

    .line 584
    move-object v1, v8

    move v2, v0

    move v3, v11

    move v4, v10

    move v5, v12

    move v6, v13

    move v15, v7

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ActivityDisplay;->isWindowingModeSupported(IZZZZI)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 586
    return v0

    .line 589
    :cond_74
    move v15, v7

    :cond_75
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityDisplay;->getWindowingMode()I

    move-result v7

    .line 590
    .end local v0    # "windowingMode":I
    .local v7, "windowingMode":I
    if-eqz v7, :cond_7e

    .line 591
    nop

    .line 590
    move v15, v7

    goto :goto_7f

    .line 591
    :cond_7e
    nop

    .line 590
    :goto_7f
    return v15
.end method

.method setIsSleeping(Z)V
    .registers 2
    .param p1, "asleep"    # Z

    .line 801
    iput-boolean p1, p0, Lcom/android/server/am/ActivityDisplay;->mSleeping:Z

    .line 802
    return-void
.end method

.method shouldSleep()Z
    .registers 2

    .line 731
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_10
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityDisplay={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " numStacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unregisterStackOrderChangedListener(Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;

    .line 819
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 820
    return-void
.end method

.method updateBounds()V
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 136
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/server/am/ActivityDisplay;->setBounds(IIII)I

    .line 137
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 869
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 870
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    const/4 v4, 0x0

    invoke-super {p0, p1, v2, v3, v4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 871
    iget v2, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 872
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1f
    if-ltz v2, :cond_34

    .line 873
    iget-object v3, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 874
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/ActivityStack;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 872
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    .line 876
    .end local v2    # "stackNdx":I
    :cond_34
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 877
    return-void
.end method
