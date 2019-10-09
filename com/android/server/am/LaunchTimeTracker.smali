.class Lcom/android/server/am/LaunchTimeTracker;
.super Ljava/lang/Object;
.source "LaunchTimeTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LaunchTimeTracker$Entry;
    }
.end annotation


# instance fields
.field private final mWindowingModeLaunchTime:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/LaunchTimeTracker$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchTimeTracker;->mWindowingModeLaunchTime:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method getEntry(I)Lcom/android/server/am/LaunchTimeTracker$Entry;
    .registers 3
    .param p1, "windowingMode"    # I

    .line 51
    iget-object v0, p0, Lcom/android/server/am/LaunchTimeTracker;->mWindowingModeLaunchTime:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/LaunchTimeTracker$Entry;

    return-object v0
.end method

.method setLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 34
    iget-object v0, p0, Lcom/android/server/am/LaunchTimeTracker;->mWindowingModeLaunchTime:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/LaunchTimeTracker$Entry;

    .line 35
    .local v0, "entry":Lcom/android/server/am/LaunchTimeTracker$Entry;
    if-nez v0, :cond_1d

    .line 36
    new-instance v1, Lcom/android/server/am/LaunchTimeTracker$Entry;

    invoke-direct {v1}, Lcom/android/server/am/LaunchTimeTracker$Entry;-><init>()V

    move-object v0, v1

    .line 37
    iget-object v1, p0, Lcom/android/server/am/LaunchTimeTracker;->mWindowingModeLaunchTime:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 39
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/android/server/am/LaunchTimeTracker$Entry;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 40
    return-void
.end method

.method stopFullyDrawnTraceIfNeeded(I)V
    .registers 3
    .param p1, "windowingMode"    # I

    .line 43
    iget-object v0, p0, Lcom/android/server/am/LaunchTimeTracker;->mWindowingModeLaunchTime:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/LaunchTimeTracker$Entry;

    .line 44
    .local v0, "entry":Lcom/android/server/am/LaunchTimeTracker$Entry;
    if-nez v0, :cond_b

    .line 45
    return-void

    .line 47
    :cond_b
    # invokes: Lcom/android/server/am/LaunchTimeTracker$Entry;->stopFullyDrawnTraceIfNeeded()V
    invoke-static {v0}, Lcom/android/server/am/LaunchTimeTracker$Entry;->access$000(Lcom/android/server/am/LaunchTimeTracker$Entry;)V

    .line 48
    return-void
.end method
