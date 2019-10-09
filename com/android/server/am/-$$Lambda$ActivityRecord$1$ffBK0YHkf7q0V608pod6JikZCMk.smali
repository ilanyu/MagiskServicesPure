.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityRecord$1$ffBK0YHkf7q0V608pod6JikZCMk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/ActivityRecord$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityRecord$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityRecord$1$ffBK0YHkf7q0V608pod6JikZCMk;->f$0:Lcom/android/server/am/ActivityRecord$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityRecord$1$ffBK0YHkf7q0V608pod6JikZCMk;->f$0:Lcom/android/server/am/ActivityRecord$1;

    invoke-static {v0}, Lcom/android/server/am/ActivityRecord$1;->lambda$onGestureCancel$0(Lcom/android/server/am/ActivityRecord$1;)V

    return-void
.end method
