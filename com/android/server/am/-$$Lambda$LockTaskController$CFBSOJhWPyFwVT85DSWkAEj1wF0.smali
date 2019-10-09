.class public final synthetic Lcom/android/server/am/-$$Lambda$LockTaskController$CFBSOJhWPyFwVT85DSWkAEj1wF0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/LockTaskController;

.field private final synthetic f$1:Lcom/android/server/am/TaskRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/LockTaskController;Lcom/android/server/am/TaskRecord;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$CFBSOJhWPyFwVT85DSWkAEj1wF0;->f$0:Lcom/android/server/am/LockTaskController;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$CFBSOJhWPyFwVT85DSWkAEj1wF0;->f$1:Lcom/android/server/am/TaskRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$CFBSOJhWPyFwVT85DSWkAEj1wF0;->f$0:Lcom/android/server/am/LockTaskController;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$CFBSOJhWPyFwVT85DSWkAEj1wF0;->f$1:Lcom/android/server/am/TaskRecord;

    invoke-static {v0, v1}, Lcom/android/server/am/LockTaskController;->lambda$removeLockedTask$0(Lcom/android/server/am/LockTaskController;Lcom/android/server/am/TaskRecord;)V

    return-void
.end method
