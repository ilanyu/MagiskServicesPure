.class public final Lcom/android/server/am/ProcessList$ProcStateMemTracker;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcStateMemTracker"
.end annotation


# instance fields
.field final mHighestMem:[I

.field mPendingHighestMemState:I

.field mPendingMemState:I

.field mPendingScalingFactor:F

.field final mScalingFactor:[F

.field mTotalHighestMem:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    const/4 v0, 0x5

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    .line 627
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    .line 628
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 635
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_1f

    .line 636
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aput v0, v2, v1

    .line 637
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v1

    .line 635
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 639
    .end local v1    # "i":I
    :cond_1f
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 640
    return-void
.end method


# virtual methods
.method public dumpLine(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 643
    const-string v0, "best="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 645
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    const/4 v0, 0x0

    .line 647
    .local v0, "needSep":Z
    const/4 v1, 0x0

    .line 647
    .local v1, "i":I
    :goto_11
    const/4 v2, 0x5

    if-ge v1, v2, :cond_47

    .line 648
    iget-object v3, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v3, v3, v1

    if-ge v3, v2, :cond_44

    .line 649
    if-eqz v0, :cond_22

    .line 650
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 651
    const/4 v0, 0x0

    .line 653
    :cond_22
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 654
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 655
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 656
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 657
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 658
    const-string/jumbo v2, "x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 659
    const/4 v0, 0x1

    .line 647
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 662
    .end local v1    # "i":I
    :cond_47
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 663
    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v1, :cond_74

    .line 664
    const-string v1, " / pending state="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 665
    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 666
    const-string v1, " highest="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 667
    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 668
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 669
    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 670
    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    :cond_74
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 673
    return-void
.end method
