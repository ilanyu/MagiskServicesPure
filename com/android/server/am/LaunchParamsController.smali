.class Lcom/android/server/am/LaunchParamsController;
.super Ljava/lang/Object;
.source "LaunchParamsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;,
        Lcom/android/server/am/LaunchParamsController$LaunchParams;
    }
.end annotation


# instance fields
.field private final mModifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTmpCurrent:Lcom/android/server/am/LaunchParamsController$LaunchParams;

.field private final mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

.field private final mTmpResult:Lcom/android/server/am/LaunchParamsController$LaunchParams;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mModifiers:Ljava/util/List;

    .line 46
    new-instance v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    .line 48
    new-instance v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpCurrent:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    .line 49
    new-instance v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpResult:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    .line 52
    iput-object p1, p0, Lcom/android/server/am/LaunchParamsController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 53
    return-void
.end method


# virtual methods
.method calculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;)V
    .registers 19
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "result"    # Lcom/android/server/am/LaunchParamsController$LaunchParams;

    move-object v0, p0

    .line 79
    move-object/from16 v1, p6

    invoke-virtual/range {p6 .. p6}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->reset()V

    .line 84
    iget-object v2, v0, Lcom/android/server/am/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_46

    .line 85
    iget-object v3, v0, Lcom/android/server/am/LaunchParamsController;->mTmpCurrent:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3, v1}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->set(Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    .line 86
    iget-object v3, v0, Lcom/android/server/am/LaunchParamsController;->mTmpResult:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->reset()V

    .line 87
    iget-object v3, v0, Lcom/android/server/am/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;

    .line 89
    .local v3, "modifier":Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;
    iget-object v10, v0, Lcom/android/server/am/LaunchParamsController;->mTmpCurrent:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v11, v0, Lcom/android/server/am/LaunchParamsController;->mTmpResult:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    move-object v4, v3

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-interface/range {v4 .. v11}, Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;->onCalculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;Lcom/android/server/am/LaunchParamsController$LaunchParams;)I

    move-result v4

    packed-switch v4, :pswitch_data_48

    .end local v3    # "modifier":Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;
    goto :goto_43

    .line 100
    .restart local v3    # "modifier":Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;
    :pswitch_36
    iget-object v4, v0, Lcom/android/server/am/LaunchParamsController;->mTmpResult:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v1, v4}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->set(Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    .end local v3    # "modifier":Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;
    goto :goto_43

    .line 96
    .restart local v3    # "modifier":Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;
    :pswitch_3c
    iget-object v4, v0, Lcom/android/server/am/LaunchParamsController;->mTmpResult:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v1, v4}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->set(Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    .line 97
    return-void

    .line 93
    :pswitch_42
    nop

    .line 84
    .end local v3    # "modifier":Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;
    :goto_43
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 104
    .end local v2    # "i":I
    :cond_46
    return-void

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_42
        :pswitch_3c
        :pswitch_36
    .end packed-switch
.end method

.method layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z
    .registers 9
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 111
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/LaunchParamsController;->layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 13
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;

    .line 116
    iget-object v6, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/LaunchParamsController;->calculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    .line 119
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 120
    return v1

    .line 123
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 126
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v0, v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 127
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    if-eq v0, v2, :cond_41

    .line 128
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v3, v3, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->moveStackToDisplay(II)V

    .line 131
    :cond_41
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v0, v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 132
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-eq v0, v2, :cond_62

    .line 133
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v2, v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 136
    :cond_62
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v0, v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 137
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v0, v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z
    :try_end_73
    .catchall {:try_start_1c .. :try_end_73} :catchall_85

    .line 138
    const/4 v0, 0x1

    .line 143
    iget-object v1, p0, Lcom/android/server/am/LaunchParamsController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 138
    return v0

    .line 140
    :cond_7c
    nop

    .line 143
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 140
    return v1

    .line 143
    :catchall_85
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/LaunchParamsController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method registerDefaultModifiers(Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 3
    .param p1, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .line 61
    new-instance v0, Lcom/android/server/am/TaskLaunchParamsModifier;

    invoke-direct {v0}, Lcom/android/server/am/TaskLaunchParamsModifier;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/am/LaunchParamsController;->registerModifier(Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;)V

    .line 65
    new-instance v0, Lcom/android/server/am/ActivityLaunchParamsModifier;

    invoke-direct {v0, p1}, Lcom/android/server/am/ActivityLaunchParamsModifier;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/LaunchParamsController;->registerModifier(Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;)V

    .line 66
    return-void
.end method

.method registerModifier(Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;)V
    .registers 3
    .param p1, "modifier"    # Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;

    .line 152
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 153
    return-void

    .line 156
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method
