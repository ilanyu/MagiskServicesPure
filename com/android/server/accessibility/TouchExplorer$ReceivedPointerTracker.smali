.class Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
.super Ljava/lang/Object;
.source "TouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceivedPointerTracker"
.end annotation


# static fields
.field private static final LOG_TAG_RECEIVED_POINTER_TRACKER:Ljava/lang/String; = "ReceivedPointerTracker"


# instance fields
.field private mLastReceivedDownEdgeFlags:I

.field private mLastReceivedEvent:Landroid/view/MotionEvent;

.field private mLastReceivedUpPointerDownTime:J

.field private mLastReceivedUpPointerDownX:F

.field private mLastReceivedUpPointerDownY:F

.field private mPrimaryPointerId:I

.field private final mReceivedPointerDownTime:[J

.field private final mReceivedPointerDownX:[F

.field private final mReceivedPointerDownY:[F

.field private mReceivedPointersDown:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/accessibility/TouchExplorer;

    .line 1447
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1451
    const/16 v0, 0x20

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    .line 1452
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    .line 1453
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    return-void
.end method

.method private findPrimaryPointerId()I
    .registers 9

    .line 1656
    const/4 v0, -0x1

    .line 1657
    .local v0, "primaryPointerId":I
    const-wide v1, 0x7fffffffffffffffL

    .line 1660
    .local v1, "minDownTime":J
    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 1661
    .local v3, "pointerIdBits":I
    :goto_8
    if-lez v3, :cond_1d

    .line 1662
    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    .line 1663
    .local v4, "pointerId":I
    const/4 v5, 0x1

    shl-int/2addr v5, v4

    not-int v5, v5

    and-int/2addr v3, v5

    .line 1664
    iget-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    aget-wide v5, v5, v4

    .line 1665
    .local v5, "downPointerTime":J
    cmp-long v7, v5, v1

    if-gez v7, :cond_1c

    .line 1666
    move-wide v1, v5

    .line 1667
    move v0, v4

    .line 1669
    .end local v4    # "pointerId":I
    .end local v5    # "downPointerTime":J
    :cond_1c
    goto :goto_8

    .line 1670
    :cond_1d
    return v0
.end method

.method private handleReceivedPointerDown(ILandroid/view/MotionEvent;)V
    .registers 8
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1611
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1612
    .local v0, "pointerId":I
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    .line 1614
    .local v1, "pointerFlag":I
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    .line 1615
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 1616
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 1618
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    .line 1620
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 1621
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v0

    .line 1622
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v0

    .line 1623
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 1625
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 1626
    return-void
.end method

.method private handleReceivedPointerUp(ILandroid/view/MotionEvent;)V
    .registers 8
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1635
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1636
    .local v0, "pointerId":I
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    .line 1638
    .local v1, "pointerFlag":I
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownTime(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    .line 1639
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aget v2, v2, v0

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 1640
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aget v2, v2, v0

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    .line 1642
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    not-int v3, v1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 1643
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 1644
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aput v3, v2, v0

    .line 1645
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    .line 1647
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    if-ne v2, v0, :cond_34

    .line 1648
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 1650
    :cond_34
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 1476
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 1477
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 1478
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 1479
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 1480
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 1481
    iput-wide v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    .line 1482
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 1483
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    .line 1484
    return-void
.end method

.method public getLastReceivedDownEdgeFlags()I
    .registers 2

    .line 1601
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    return v0
.end method

.method public getLastReceivedEvent()Landroid/view/MotionEvent;
    .registers 2

    .line 1521
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastReceivedUpPointerDownTime()J
    .registers 3

    .line 1580
    iget-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    return-wide v0
.end method

.method public getLastReceivedUpPointerDownX()F
    .registers 2

    .line 1587
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    return v0
.end method

.method public getLastReceivedUpPointerDownY()F
    .registers 2

    .line 1594
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    return v0
.end method

.method public getPrimaryPointerId()I
    .registers 3

    .line 1570
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 1571
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->findPrimaryPointerId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 1573
    :cond_b
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    return v0
.end method

.method public getReceivedPointerDownCount()I
    .registers 2

    .line 1528
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getReceivedPointerDownTime(I)J
    .registers 4
    .param p1, "pointerId"    # I

    .line 1563
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getReceivedPointerDownX(I)F
    .registers 3
    .param p1, "pointerId"    # I

    .line 1547
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aget v0, v0, p1

    return v0
.end method

.method public getReceivedPointerDownY(I)F
    .registers 3
    .param p1, "pointerId"    # I

    .line 1555
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aget v0, v0, p1

    return v0
.end method

.method public isReceivedPointerDown(I)Z
    .registers 5
    .param p1, "pointerId"    # I

    .line 1538
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 1539
    .local v1, "pointerFlag":I
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1492
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_9

    .line 1493
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1495
    :cond_9
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 1497
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1498
    .local v0, "action":I
    packed-switch v0, :pswitch_data_38

    :pswitch_16
    goto :goto_37

    .line 1509
    :pswitch_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_37

    .line 1503
    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    .line 1504
    goto :goto_37

    .line 1506
    :pswitch_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    .line 1507
    goto :goto_37

    .line 1500
    :pswitch_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    .line 1501
    nop

    .line 1515
    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_27
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_17
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1676
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    const-string v1, "\nDown pointers #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1679
    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    const/16 v2, 0x20

    if-ge v1, v2, :cond_31

    .line 1681
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->isReceivedPointerDown(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1682
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1683
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1686
    .end local v1    # "i":I
    :cond_31
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1687
    const-string v1, "\nPrimary pointer id [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1688
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1689
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1690
    const-string v1, "\n========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1691
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
