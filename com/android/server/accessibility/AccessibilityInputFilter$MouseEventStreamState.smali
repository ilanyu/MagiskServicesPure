.class Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;
.super Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MouseEventStreamState"
.end annotation


# instance fields
.field private mMotionSequenceStarted:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 622
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;-><init>()V

    .line 623
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->reset()V

    .line 624
    return-void
.end method


# virtual methods
.method public final reset()V
    .registers 2

    .line 628
    invoke-super {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->mMotionSequenceStarted:Z

    .line 630
    return-void
.end method

.method public final shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 639
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->mMotionSequenceStarted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 640
    return v1

    .line 643
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 644
    .local v0, "action":I
    if-eqz v0, :cond_12

    const/4 v2, 0x7

    if-ne v0, v2, :cond_10

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    nop

    :cond_12
    :goto_12
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->mMotionSequenceStarted:Z

    .line 646
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->mMotionSequenceStarted:Z

    return v1
.end method

.method public final shouldProcessScroll()Z
    .registers 2

    .line 634
    const/4 v0, 0x1

    return v0
.end method
