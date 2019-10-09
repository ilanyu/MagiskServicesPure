.class public Lcom/android/server/am/ActivityLaunchParamsModifier;
.super Ljava/lang/Object;
.source "ActivityLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;


# instance fields
.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 2
    .param p1, "activityStackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/am/ActivityLaunchParamsModifier;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 35
    return-void
.end method


# virtual methods
.method public onCalculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;Lcom/android/server/am/LaunchParamsController$LaunchParams;)I
    .registers 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "currentParams"    # Lcom/android/server/am/LaunchParamsController$LaunchParams;
    .param p7, "outParams"    # Lcom/android/server/am/LaunchParamsController$LaunchParams;

    .line 42
    const/4 v0, 0x0

    if-nez p3, :cond_4

    .line 43
    return v0

    .line 47
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityLaunchParamsModifier;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p5}, Lcom/android/server/am/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 48
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_1b

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_30

    .line 52
    :cond_1b
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 55
    .local v1, "bounds":Landroid/graphics/Rect;
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_2f

    .line 59
    :cond_28
    iget-object v0, p7, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 63
    const/4 v0, 0x1

    return v0

    .line 56
    :cond_2f
    :goto_2f
    return v0

    .line 49
    .end local v1    # "bounds":Landroid/graphics/Rect;
    :cond_30
    :goto_30
    return v0
.end method
