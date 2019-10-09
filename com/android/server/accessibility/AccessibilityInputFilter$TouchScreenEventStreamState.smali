.class Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;
.super Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchScreenEventStreamState"
.end annotation


# instance fields
.field private mHoverSequenceStarted:Z

.field private mTouchSequenceStarted:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 657
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;-><init>()V

    .line 658
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->reset()V

    .line 659
    return-void
.end method


# virtual methods
.method public final reset()V
    .registers 2

    .line 663
    invoke-super {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mTouchSequenceStarted:Z

    .line 665
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mHoverSequenceStarted:Z

    .line 666
    return-void
.end method

.method public final shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 671
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    .line 672
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mTouchSequenceStarted:Z

    if-eqz v0, :cond_d

    .line 673
    return v2

    .line 675
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_15

    move v1, v2

    nop

    :cond_15
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mTouchSequenceStarted:Z

    .line 676
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mTouchSequenceStarted:Z

    return v0

    .line 680
    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mHoverSequenceStarted:Z

    if-eqz v0, :cond_1f

    .line 681
    return v2

    .line 683
    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_29

    move v1, v2

    nop

    :cond_29
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mHoverSequenceStarted:Z

    .line 684
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mHoverSequenceStarted:Z

    return v0
.end method
