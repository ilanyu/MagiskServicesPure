.class public final synthetic Lcom/android/server/am/-$$Lambda$LockTaskController$1$kkBevvrWTeS1ZnzjKqWe3h2dPhk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/LockTaskController$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/LockTaskController$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$1$kkBevvrWTeS1ZnzjKqWe3h2dPhk;->f$0:Lcom/android/server/am/LockTaskController$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$1$kkBevvrWTeS1ZnzjKqWe3h2dPhk;->f$0:Lcom/android/server/am/LockTaskController$1;

    invoke-static {v0}, Lcom/android/server/am/LockTaskController$1;->lambda$onDismissSucceeded$0(Lcom/android/server/am/LockTaskController$1;)V

    return-void
.end method
