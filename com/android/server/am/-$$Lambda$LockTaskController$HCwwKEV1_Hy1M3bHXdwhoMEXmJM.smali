.class public final synthetic Lcom/android/server/am/-$$Lambda$LockTaskController$HCwwKEV1_Hy1M3bHXdwhoMEXmJM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/LockTaskController;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/LockTaskController;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$HCwwKEV1_Hy1M3bHXdwhoMEXmJM;->f$0:Lcom/android/server/am/LockTaskController;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$HCwwKEV1_Hy1M3bHXdwhoMEXmJM;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$HCwwKEV1_Hy1M3bHXdwhoMEXmJM;->f$0:Lcom/android/server/am/LockTaskController;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$HCwwKEV1_Hy1M3bHXdwhoMEXmJM;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/am/LockTaskController;->lambda$updateLockTaskFeatures$2(Lcom/android/server/am/LockTaskController;I)V

    return-void
.end method
