.class Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
.super Ljava/lang/Object;
.source "TouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InjectedPointerTracker"
.end annotation


# static fields
.field private static final LOG_TAG_INJECTED_POINTER_TRACKER:Ljava/lang/String; = "InjectedPointerTracker"


# instance fields
.field private mInjectedPointersDown:I

.field private mLastInjectedDownEventTime:J

.field private mLastInjectedHoverEvent:Landroid/view/MotionEvent;

.field private mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/TouchExplorer;

    .line 1318
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 1318
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 1318
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1379
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    .line 1380
    return-void
.end method

.method public getInjectedPointerDownCount()I
    .registers 2

    .line 1393
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getInjectedPointersDown()I
    .registers 2

    .line 1400
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    return v0
.end method

.method public getLastInjectedDownEventTime()J
    .registers 3

    .line 1386
    iget-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedDownEventTime:J

    return-wide v0
.end method

.method public getLastInjectedHoverEvent()Landroid/view/MotionEvent;
    .registers 2

    .line 1418
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;
    .registers 2

    .line 1425
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public isInjectedPointerDown(I)Z
    .registers 5
    .param p1, "pointerId"    # I

    .line 1410
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 1411
    .local v1, "pointerFlag":I
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1340
    .local v0, "action":I
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_56

    :pswitch_8
    goto :goto_55

    .line 1360
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_12

    .line 1361
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1363
    :cond_12
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    .line 1364
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    if-eqz v1, :cond_21

    .line 1365
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1367
    :cond_21
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    goto :goto_55

    .line 1350
    :pswitch_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1351
    .local v2, "pointerId":I
    shl-int/2addr v1, v2

    .line 1352
    .local v1, "pointerFlag":I
    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    not-int v4, v1

    and-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    .line 1353
    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    if-nez v3, :cond_3f

    .line 1354
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedDownEventTime:J

    .line 1356
    .end local v1    # "pointerFlag":I
    .end local v2    # "pointerId":I
    :cond_3f
    goto :goto_55

    .line 1343
    :pswitch_40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1344
    .restart local v2    # "pointerId":I
    shl-int/2addr v1, v2

    .line 1345
    .restart local v1    # "pointerFlag":I
    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    .line 1346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedDownEventTime:J

    .line 1347
    .end local v1    # "pointerFlag":I
    .end local v2    # "pointerId":I
    nop

    .line 1373
    :goto_55
    return-void

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_40
        :pswitch_28
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_40
        :pswitch_28
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1431
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    const-string v1, "\nDown pointers #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1434
    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    const/16 v2, 0x20

    if-ge v1, v2, :cond_32

    .line 1436
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2f

    .line 1437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1438
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1441
    .end local v1    # "i":I
    :cond_32
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    const-string v1, "\n========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
