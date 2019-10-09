.class public Lcom/android/server/ThreadPriorityBooster;
.super Ljava/lang/Object;
.source "ThreadPriorityBooster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ThreadPriorityBooster$PriorityState;
    }
.end annotation


# static fields
.field private static final ENABLE_LOCK_GUARD:Z = false


# instance fields
.field private volatile mBoostToPriority:I

.field private final mLockGuardIndex:I

.field private final mThreadState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/server/ThreadPriorityBooster$PriorityState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "boostToPriority"    # I
    .param p2, "lockGuardIndex"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/server/ThreadPriorityBooster$1;

    invoke-direct {v0, p0}, Lcom/android/server/ThreadPriorityBooster$1;-><init>(Lcom/android/server/ThreadPriorityBooster;)V

    iput-object v0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    .line 40
    iput p1, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    .line 41
    iput p2, p0, Lcom/android/server/ThreadPriorityBooster;->mLockGuardIndex:I

    .line 42
    return-void
.end method


# virtual methods
.method public boost()V
    .registers 5

    .line 45
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 46
    .local v0, "tid":I
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    .line 47
    .local v1, "prevPriority":I
    iget-object v2, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    .line 48
    .local v2, "state":Lcom/android/server/ThreadPriorityBooster$PriorityState;
    iget v3, v2, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    if-nez v3, :cond_1f

    .line 49
    iput v1, v2, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    .line 50
    iget v3, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    if-le v1, v3, :cond_1f

    .line 51
    iget v3, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    invoke-static {v0, v3}, Landroid/os/Process;->setThreadPriority(II)V

    .line 54
    :cond_1f
    iget v3, v2, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    .line 58
    return-void
.end method

.method public reset()V
    .registers 5

    .line 61
    iget-object v0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    .line 62
    .local v0, "state":Lcom/android/server/ThreadPriorityBooster$PriorityState;
    iget v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    .line 63
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    .line 64
    .local v1, "currentPriority":I
    iget v2, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    if-nez v2, :cond_27

    iget v2, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    if-eq v2, v1, :cond_27

    .line 65
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    iget v3, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    invoke-static {v2, v3}, Landroid/os/Process;->setThreadPriority(II)V

    .line 67
    :cond_27
    return-void
.end method

.method protected setBoostToPriority(I)V
    .registers 6
    .param p1, "priority"    # I

    .line 77
    iput p1, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    .line 78
    iget-object v0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    .line 79
    .local v0, "state":Lcom/android/server/ThreadPriorityBooster$PriorityState;
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    .line 80
    .local v1, "tid":I
    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    .line 81
    .local v2, "prevPriority":I
    iget v3, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    if-eqz v3, :cond_1b

    if-eq v2, p1, :cond_1b

    .line 82
    invoke-static {v1, p1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 84
    :cond_1b
    return-void
.end method
