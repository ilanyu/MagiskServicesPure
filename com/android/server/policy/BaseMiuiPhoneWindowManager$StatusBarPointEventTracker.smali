.class public Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StatusBarPointEventTracker"
.end annotation


# instance fields
.field private mDownX:F

.field private mDownY:F

.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 1562
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1559
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->mDownX:F

    .line 1560
    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->mDownY:F

    .line 1563
    return-void
.end method


# virtual methods
.method protected onTrack(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 1566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_60

    goto :goto_5f

    .line 1580
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x110f0000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 1585
    .local v0, "statusBarExpandHeight":F
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->mDownY:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_5f

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->mDownY:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_26

    .end local v0    # "statusBarExpandHeight":F
    goto :goto_5f

    .line 1587
    .restart local v0    # "statusBarExpandHeight":F
    :cond_26
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1588
    .local v1, "distanceX":F
    iget v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1591
    .local v2, "distanceY":F
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v1

    cmpl-float v3, v3, v2

    if-gtz v3, :cond_5f

    const/4 v3, 0x0

    cmpl-float v4, v3, v2

    if-lez v4, :cond_49

    .end local v0    # "statusBarExpandHeight":F
    .end local v1    # "distanceX":F
    .end local v2    # "distanceY":F
    goto :goto_5f

    .line 1593
    .restart local v0    # "statusBarExpandHeight":F
    .restart local v1    # "distanceX":F
    .restart local v2    # "distanceY":F
    :cond_49
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setStatusBarInFullscreen(Z)V
    invoke-static {v4, v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)V

    .line 1595
    iput v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->mDownY:F

    .line 1597
    goto :goto_5f

    .line 1568
    .end local v0    # "statusBarExpandHeight":F
    .end local v1    # "distanceX":F
    .end local v2    # "distanceY":F
    :pswitch_52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->mDownX:F

    .line 1569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->mDownY:F

    .line 1570
    nop

    .line 1601
    :cond_5f
    :goto_5f
    return-void

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_52
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
